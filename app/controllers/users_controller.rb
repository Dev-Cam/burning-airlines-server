class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token, raise: false


  def getAll
    headers['Access-Control-Allow-Origin'] = '*'
    render json: User.all
  end
end
