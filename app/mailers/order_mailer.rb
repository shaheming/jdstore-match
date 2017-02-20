class OrderMailer < ApplicationMailer
	def notify_order_placed(order)
		@order 			= order
		@user           = order.user
		@product_lists  = @order.product_lists

		mail(to: @user.email, subject:"[iMoviestore] Thank You for Your Order. Following Is Your Order List #{@order.token}")
	end
	def apply_cancel(order)
		@order 			= order
		@user           = order.user
		@product_lists  = @order.product_lists

		mail(to: "451352114@qq.com", subject:"[iMoviestore] User #{order.user.email} Apply To Cancel Order #{@order.token}")
	end	
	def notify_ship(order)
		@order 			= order
		@user           = order.user
		@product_lists  = @order.product_lists

		mail(to: @user.email, subject:"[iMoviestore] Your Order #{@order.token} Has Been Shipped")		
	end
		def notify_cancel(order)
		@order 			= order
		@user           = order.user
		@product_lists  = @order.product_lists

		mail(to: @user.email, subject:"[iMoviestore] Your Order #{@order.token} Has Been Cancelled")		
	end
end
