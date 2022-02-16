class AirplanesController < ApplicationController
  skip_before_action :verify_authenticity_token, raise: false

  ### CREATE

  def new
    @airplane = Airplane.new
  end

  def create
    airplane = Airplane.create airplane_params
    airplane.save

    if airplane.persisted?
      redirect_to root_path
    else
      render :new
    end
  end

  ### READ

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

  def update
    airplane = Airplane.find(params[:id])
    airplane.update_attributes(airplane_params)
    airplane.save
    redirect_to airplane_path
  end

  ### DELETE

  def destroy
    Airplane.destroy params[:id]
    redirect_to airplanes_path
  end



  private
  def airplane_params
    params.require(:airplane).permit(:name, :row, :column)
  end
end