class FlightsController < ApplicationController
  
  
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
  
end
