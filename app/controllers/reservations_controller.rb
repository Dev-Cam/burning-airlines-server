class ReservationsController < ApplicationController
  skip_before_action :verify_authenticity_token, raise: false

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

  def destroy
    Reservation.destroy params[:id]
    redirect_to reservations_path
  end

  ######################### API methods ###########################
  def getAll
    headers['Access-Control-Allow-Origin'] = '*'
    render json: Reservation.where('flight_id': params[:flight_id]);
  end

  def getAllUsers
    headers['Access-Control-Allow-Origin'] = '*'

    reservation = Reservation.where(user_id: params[:user_id])

    if reservation.present?
      render json: reservation
    else
      # TODO: need to change status
      render json: {error: 'could not find reservation'}, status: 400
    end
  end

  def make
    headers['Access-Control-Allow-Origin'] = '*'

    reservation = Reservation.create(
      user_id: params[:user_id],
      flight_id: params[:flight_id],
      seat: params[:seat],
    )

    if reservation.persisted?
      render json: reservation
    else
      render json: {error: 'could not create reservation'}, status: 422
    end
  end

end
