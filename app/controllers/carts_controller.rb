class CartsController < ApplicationController
	def clean
		current_cart.clean!
		redirect_to carts_path,warning:"Empty Successfully !"
	end

	def checkout
		@order = Order.new
	end
	def show
		@order = Order.new
		render :checkout
	end
end
