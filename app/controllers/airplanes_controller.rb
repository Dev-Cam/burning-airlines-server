class AirplanesController < ApplicationController

  ### CREATE

  def new
    @airplane.new
  end

  def create
    airplane = Airplane.new airplane_params
    airplane.save
    redirect_to airplane_path
  end

  ### READ

  def create
    airplane = Airplane.new airplane_params
    
    airplane.update_attributes(airplane_params)
    airplane.save

    redirect_to airplanes_path
  end


  def index

    @airplanes = Airplane.all

  end

  def show

    @airplane = Airplane.find params[:id]

  end

  ### UPDATE

  def edit
    @airplane = Airplane.find params[:id]
  end

  ### DELETE
  Airplane.destroy params[:id]
  redirect_to airplanes_path
end
