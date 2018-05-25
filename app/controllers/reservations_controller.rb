class ReservationsController < ApplicationController
  before_action :set_space_reservation, only: [:new, :create]

  def index
    @index = policy_scope(Reservation)
    @user = current_user
  end

  def show
    @reservation = Reservation.find(params[:id])
    authorize @reservation
  end

  # def new
  #   @reservation = Reservation.new
  #   authorize @reservation
  # end

  def create
    @reservation = Reservation.new
    @reservation.user = current_user
    @reservation.space = @space
    @reservation.start_date = params[:reservation]["start_date"]
    @reservation.end_date = params[:reservation]["end_date"]
    authorize @reservation
    @reservation.save
    redirect_to reservation_path(@reservation)
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    authorize @reservation
    @reservation.destroy
    redirect_to reservations_path
  end

  private

  def set_space_reservation
    @space = Space.find(params[:space_id])
    authorize @space
  end
end
