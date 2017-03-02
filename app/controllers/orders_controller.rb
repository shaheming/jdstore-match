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
				product_list.product_id = cart_item.product.id
				seat_total = (cart_item.seat_id - 1 )% 64
				Rails.logger.debug("debug::" +  "=====" + seat_total.to_s + "====" + "\n")
				row_max = 8
				col_max = 8
				product_list.col = seat_total % 8 + 1
				product_list.row = seat_total / 8 + 1
				Rails.logger.debug("debug::" +  "==row===" + product_list.row.to_s + "==col==" + product_list.col.to_s+"\n")
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
		end
	end

	def pay_with_alipay
		@order = Order.find_by_token(params[:id])
		@order.set_payment_with!("alipay")
		@order.make_payment!
		redirect_to order_path(@order.token)
	end

	def pay_with_wechat
		@order = Order.find_by_token(params[:id])
		@order.set_payment_with!("wechat")
		@order.make_payment!
		redirect_to order_path(@order.token)
	end
	def apply_to_cancel
		@order = Order.find(params[:id])
		OrderMailer.apply_cancel(@order).deliver!
		redirect_to :back
	end
	def generate_tickets
		
	end

	private
	def order_params
		params.require(:order).permit(:first_name, :last_name, :phonenumber)
	end
end
