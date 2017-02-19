class SeatsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :destroy]
	before_action :admin_required, only: [:new, :create, :edit, :destroy]

  def index
    @product=Product.find(params[:product_id])
    # @seats = Seat.all
    @seats = @product.seats
    # 而不是@seats.product=@product!!!!

  end

  def new
    @product=Product.find(params[:product_id])
    @seat=Seat.new
    # @seat.product=@product   思考：参考group post，这句话为什么是多余的？？？
  end

  def create
    @product=Product.find(params[:product_id])
    @seat=Seat.new(seat_params)
    @seat.product=@product

    if @seat.save
      redirect_to product_seats_path(@product)
    else
      render :new
    end
  end

  # def edit
	# 	@seat = Seat.find(params[:id])
	# end
	# def update
	# 	@seat = Seat.find(params[:id])
	# 	if @seat.update(seat_params)
	# 		redirect_to seats_path
	# 	else
	# 		render :edit
	# 	end
	# end


  def destroy
    @seat = Seat.find(params[:id])
    @seat.destroy
    redirect_to product_seats_path
  end

  def select
  # @seat=Seat.find(params[:product_id])  思考，find和find_by这个语句怎们应用
  @seat=Seat.find(params[:id])
  # @product=Product.find(params[:id])
  # @seat.product=@product   这两句为什么是多余的？
  if @seat.is_selected == false
    current_user.select!(@seat)
    flash[:notice]="选座成功！"
  else
    flash[:alert]="已被选择"
  end
  redirect_to :back
  end


  def cancel
    # @product=Product.find(params[:id])
    @seat=Seat.find(params[:id])
    if @seat.selected? && @seat.user == current_user
      current_user.cancel!(@seat)
      flash[:warning]="取消选择"
    else
      flash[:alert]="操作失败！"
    end
    redirect_to :back
  end

  private
  def seat_params
    params.require(:seat).permit(:seatimg)
  end
end
