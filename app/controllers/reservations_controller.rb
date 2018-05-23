class ReservationsController < ApplicationController
  def index
    @index = Reservation.all
    @user = current_user
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def new
    @space = Space.find(params[:space_id])
    @reservation = Reservation.new
  end

  def create
    @space = Space.find(params[:space_id])
    @reservation = Reservation.new
    @reservation.user = current_user
    @reservation.space = @space
    # @reservation.space =
    @reservation.save
    redirect_to reservations_path
  end
end
