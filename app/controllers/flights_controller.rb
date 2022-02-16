class FlightsController < ApplicationController
  
  
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
      redirect_to flight_path(flight)
    else
      render :new
    end
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

  private
  def flight_params
    params.require(:flight).permit(:flight_number, :origin, :destination, :date, :airplane_id)
  end
end

