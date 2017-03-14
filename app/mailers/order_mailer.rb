class OrderMailer < ApplicationMailer
	# before_action :find_basic_info, only: [:notify_order_placed,:apply_cancel,:notify_ship,:notify_cancel]

	def notify_order_placed(order)
		find_basic_info(order)
		mail(to: @user.email, subject:"[iMoviestore] Thank You for Your Order. Following Is Your Order List #{@order.token}")
	end
	def apply_cancel(order)
		find_basic_info(order)
		mail(to: "451352114@qq.com", subject:"[iMoviestore] User #{order.user.email} Apply To Cancel Order #{@order.token}")
	end	
	def notify_ship(order)
		find_basic_info(order)
		mail(to: @user.email, subject:"[iMoviestore] Your Order #{@order.token} Has Been Shipped")		
	end
	def notify_cancel(order)
		find_basic_info(order)
		mail(to: @user.email, subject:"[iMoviestore] Your Order #{@order.token} Has Been Cancelled")		
	end

	private
	def find_basic_info(order)
		@order 			= order
		@user           = order.user
		@product_lists  = @order.product_lists		
	end
end
