
class PagesController < ApplicationController

    def home
        @flights = Flight.all
        @airplanes = Airplane.all

      

    end
    
end
