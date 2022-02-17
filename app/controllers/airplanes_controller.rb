class AirplanesController < ApplicationController
  
  before_action :authenticate_user

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



   #################### API ########################

   def getAll
    headers['Access-Control-Allow-Origin'] = '*'
    render json: Airplane.all
    end 


    private
    
    def airplane_params
      params.require(:airplane).permit(:name, :row, :column)
    end
end