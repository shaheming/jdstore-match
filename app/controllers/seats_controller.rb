class SeatsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :destroy]
	before_action :admin_required, only: [:new, :create, :edit, :destroy]

  def index
    @seats = Seat.all
  end

  def new
    @seat=Seat.new
  end

  def create
    @seat=Seat.new(seat_params)

    if @seat.save
      redirect_to seats_path
    else
      render :new
    end
  end

  def edit
		@seat = Seat.find(params[:id])
	end
	def update
		@seat = Seat.find(params[:id])
		if @seat.update(seat_params)
			redirect_to seats_path
		else
			render :edit
		end
	end


  def destroy
    @seat = Seat.find(params[:id])
    @seat.destroy
    redirect_to seats_path
  end

  private
  def seat_params
    params.require(:seat).permit(:seatimg)
  end
end
