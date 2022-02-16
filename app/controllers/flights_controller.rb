class FlightsController < ApplicationController
  
  
  ### CREATE

  def new
    @flight.new
  end

  ### READ

  def create
    flight = Flight.new flight_params
    
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
  end

  ### DELETE
  


  
end
