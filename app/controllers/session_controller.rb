class SessionController < ApplicationController
  def new
  end


  # login
  def create
    user = User.find_by name: params[:name]

    # check if name and password match
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id

      # if a user is admin, redirect to admin
      if user.is_admin?
        # redirect to admin page
        redirect_to root_path
      else
        # TODO: need to fix this...
        redirect_to "http://localhost:3001/"
      end
    else
      flash[:error] = "Invalid username or password"

      redirect_to login_path
    end
  end


  # logout
  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end
end
