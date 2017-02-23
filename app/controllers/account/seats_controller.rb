class Account::SeatsController < ApplicationController
  before_action :authenticate_user!

  def index
    @seats = current_user.seats
  end 
end
