class SeatsController < ApplicationController
  before_action :authenticate_user!
	before_action :admin_required, only: [:new, :create, :edit, :destroy]
  before_action :find_product, only: [:index,:new,:create,:edit,:update]
  before_action :find_seat, only: [:edit,:update,:destroy,:select,:cancel]

  def index
    @seats = @product.seats.includes(:user).order("id ASC")
  end

  def new
    @seat=Seat.new
  end

  def create
    @seat=Seat.new(seat_params)
    @seat.product=@product

    if @seat.save
      redirect_to product_seats_path(@product)
    else
      render :new
    end
  end

  def edit
	end

	def update
    @seat.product=@product

		if @seat.update(seat_params)
      redirect_to product_seats_path(@product)

		else
			render :edit
		end
	end


  def destroy
    @seat.destroy
    redirect_to product_seats_path
  end

  def select
  # @seat=Seat.find(params[:product_id])  思考，find和find_by这个语句怎们应用
  @product=@seat.product
  @seat=Seat.find(params[:id])
  # @product=Product.find(params[:id])
  # @seat.product=@product   这两句为什么是多余的？
  if !@seat.selected?
    current_user.select!(@seat)
    current_cart.add_product_to_cart(@seat.product,@seat)
    @seat.save!
  elsif @seat.selected? && @seat.user == current_user
  else
  end
  # redirect_to :back
  render "seat_item"
  end


  def cancel
    @product=@seat.product
    if @seat.selected? && @seat.user == current_user
      current_user.cancel!(@seat)
      @seat.save
    else
      flash[:alert]="you have no admission to make a cancel for others！"
    end
    render "seat_item"
  end

  private
  def seat_params
    params.require(:seat).permit(:seatimg)
  end

  def find_product
    @product = Product.find_by(friendly_id:params[:product_id])
  end
  def find_seat
    @seat = Seat.find(params[:id])
  end
end
