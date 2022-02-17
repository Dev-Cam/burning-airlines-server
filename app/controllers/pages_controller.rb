
class PagesController < ApplicationController

    skip_before_action :verify_authenticity_token, raise: false


    def index

        @flights = Flight.all
        @airplanes = Airplane.all

    end
end
