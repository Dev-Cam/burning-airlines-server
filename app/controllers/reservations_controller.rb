class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
  end

  def new
    @reservation = Reservation.new
  end

  def create
    reservation = Reservation.new reservation_params
    reservation.save
    redirect_to reservations_path
  end

  def edit
    @reservation = Reservation.find params[:id]
  end

  def show
    @reservation = Reservation.find params[:id]
  end
end
