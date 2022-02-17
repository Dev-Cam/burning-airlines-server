
class PagesController < ApplicationController

    def index
        
        if current_user
            @flights = Flight.all
            @airplanes = Airplane.all
        else
            flash[:error] = "Not authorised"
            redirect_to login_path
        end
    end
end
