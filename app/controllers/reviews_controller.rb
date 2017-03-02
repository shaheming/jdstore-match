class ReviewsController < ApplicationController
  before_action :authenticate_user!, only:[:create,:delete]

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new(review_params)
    @review.user = current_user

    if @review.save
  redirect_to product_path(@product)
else
  redirect_to product_path(@product)
end
  end

  def destroy
    @product = Product.find(params[:product_id])
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to product_path(@product)
  end

  private
  def review_params
    params.require(:review).permit(:body)
  end
end
