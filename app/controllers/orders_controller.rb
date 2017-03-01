class OrdersController < ApplicationController
	before_action :authenticate_user!, only:[:create]
	require 'rqrcode'
	def create
		@order = Order.new(order_params)
		@order.user = current_user
		@order.total = current_cart.total_price
		if @order.save
			
			current_cart.cart_items.each do |cart_item|
				product_list = ProductList.new
				product_list.order = @order
				product_list.product_name = cart_item.product.title
				product_list.product_price = cart_item.product.price
				product_list.quantity = cart_item.quantity
				product_list.save!
			end
			current_cart.clean!
			OrderMailer.notify_order_placed(@order).deliver!

			redirect_to order_path(@order.token)
		else
			render 'carts/checkout'
		end

	end

	def show
		@order = Order.find_by_token(params[:id])
		@product_lists = @order.product_lists
		if @order.is_paid?
			@product_lists = @order.product_lists
			
			str_test ="the loar of the ring"+" " +"2007-12-12 17:20"+" " \
			          +"col: 7"+" "+ "raw: 7" +"\ "+" aad  ddddddddda ddddddddd"
			
			@qr = RQRCode::QRCode.new( str_test, :size => 4, :level => :l )
		end
	end

	def pay_with_alipay
		@order = Order.find_by_token(params[:id])
		@order.set_payment_with!("alipay")
		@order.make_payment!

		redirect_to order_path(@order.token),notice:"pay with alipay!"
	end

	def pay_with_wechat
		@order = Order.find_by_token(params[:id])
		@order.set_payment_with!("wechat")
		@order.make_payment!

		redirect_to order_path(@order.token),notice:"pay with wechat!"
	end
	def apply_to_cancel
		@order = Order.find(params[:id])
		OrderMailer.apply_cancel(@order).deliver!
		# flash[:notice] = "Application Submitted"
		redirect_to :back
	end
	def generate_tickets
		
	end

	private
	def order_params
		params.require(:order).permit(:billing_name, :billing_address, :shipping_name, :shipping_address)
	end
end
