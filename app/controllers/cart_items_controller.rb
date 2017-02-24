class CartItemsController < ApplicationController
 	before_action :authenticate_user!
 	def destroy
 		@cart = current_cart
 		@cart_item = @cart.cart_items.find_by(product_id: params[:id])
 		@product = @cart_item.product
 		@seat=@cart_item.seat
 		if @seat.selected? && @seat.user == current_user
	      current_user.cancel!(@seat)
	      @seat.save
	  	end
 		@cart_item.destroy
 		redirect_to :back, warning:"#{@product.title} was deleted!"
 	end

 	def update
 		p params
 		@cart = current_cart
 		@cart_item = @cart.cart_items.find_by(product_id: params[:id])
 		if @cart_item.product.quantity >= cart_item_params[:quantity].to_i
 			if  params[:add] == "1"
 				@cart_item.quantity +=1
 				@cart_item.save!
 			elsif params[:sub] =="1"
 				@cart_item.quantity -=1
 				@cart_item.save!
 			end
 		elsif cart_item_params[:quantity].to_i < 0
 			redirect_to carts_path
 		end
 		redirect_to carts_path
 	end




 	private
 	def cart_item_params
 		params.require(:cart_item).permit(:quantity)
 	end
end
