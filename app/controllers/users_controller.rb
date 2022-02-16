class UsersController < ApplicationController

  ### CREATE

  def new
    @user.new
  end

  def create
    user = User.new user_params
    user.save
    redirect_to user_path
  end

  ### READ

  def create
    user = User.new user_params
    
    user.update_attributes(user_params)
    user.save

    redirect_to users_path
  end


  def index

    @users = User.all

  end

  def show

    @user = User.find params[:id]

  end

  ### UPDATE

  def edit
    @user = User.find params[:id]
  end

  ### DELETE
  
  def destroy
    User.destroy params[:id]
    redirect_to users_path
  end
end
