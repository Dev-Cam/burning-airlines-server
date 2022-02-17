class UsersController < ApplicationController

  before_action :authenticate_user


  def getAll
    headers['Access-Control-Allow-Origin'] = '*'
    render json: User.all
  end
end
