class FlightsController < ApplicationController
  skip_before_action :verify_authenticity_token, raise: false
  
  
  ### CREATE

  def new
    @flight = Flight.new
    @airplane_select = Airplane.all.pluck(:name, :id)
  end

  def create
    @airplane_select = Airplane.all.pluck(:name, :id)
    flight = Flight.create flight_params
    flight.save

    if flight.persisted?
      redirect_to root_path
    else
      render :new
    end
  end

  ### READ


  def index
    @flights = Flight.all
  end

  def show
    @flight = Flight.find params[:id]

  end

  ### UPDATE

  def edit
    @flight = Flight.find params[:id]
  end

  ### DELETE
  
  def destroy
    Flight.destroy params[:id]
    redirect_to flights_path
  end


  ######################### API methods ###########################
  def getAll
    headers['Access-Control-Allow-Origin'] = '*'
    render json: Flight.all
  end


  def getOne
    headers['Access-Control-Allow-Origin'] = '*'

    flight = Flight.find params[:id]

    if flight.present?
      render json: flight
    else
      # TODO: need to change status
      render json: {error: 'could not find flight'}, status: 400
    end
  end

  def search
    headers['Access-Control-Allow-Origin'] = '*'

    flight = Flight.where(["origin = ? and destination = ?", params[:origin], params[:destination]]);

    if flight.present?
      render json: flight
    else
      # TODO: need to change status
      render json: {error: 'could not find flight'}, status: 400
    end
  end

  def getSeats
    headers['Access-Control-Allow-Origin'] = '*'

    flight = Flight.find params[:id]
    airplane_type = Airplane.find flight.airplane_id

    render json: airplane_type
  end

  private
  def flight_params
    params.require(:flight).permit(:flight_number, :origin, :destination, :date, :airplane_id)
  end
end

