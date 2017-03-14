class ReviewsController < ApplicationController
  before_action :authenticate_user!, only:[:create,:delete]
  before_action :find_product, only: [:create,:destroy]
  def create
    @review = @product.reviews.new(review_params)
    @review.user = current_user

    if @review.save
      redirect_to product_path(@product)
    else
      redirect_to product_path(@product)
    end
  end

  def destroy
    @review = Review.includes(:user).find(params[:id])
    @review.destroy
    redirect_to product_path(@product)
  end

  private
  def review_params
    params.require(:review).permit(:body)
  end

  def find_product
    @product = Product.find(params[:product_id])
  end
end
