class FlightsController < ApplicationController
  skip_before_action :verify_authenticity_token, raise: false
  
  
  ### CREATE

  def new
    @flight.new
  end

  def create
    flight = Flight.new flight_params
    flight.save
    redirect_to flight_path
  end

  ### READ

  def create
    flight = Flight.new flight_params
    
    flight.update_attributes(flight_params)
    flight.save

    redirect_to flights_path
  end


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

  private
  def flight_params
    params.require(:flight).permit(:flight_number, :origin, :destination, :date, :airplane_id)
  end
  
end

