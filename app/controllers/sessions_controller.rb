class SessionsController < ApplicationController
  def new

  end

  def create
    user = User.find_by(name: params[:name])
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        flash[:success] = "Welcome back, #{user.name}"
        redirect_to restaurant_path(user.restaurant.id)
      else
        flash[:error] = 'Your username or password is wrong!!'
        render 'new'
      end
  end
end

  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      # HAPPY PATH
      session[:user_id] = user.id
      flash[:notice] = 'Login successfully'
      redirect_to root_path
    else
      flash[:error] = 'Your username or password is wrong'
      render 'sessions/new' #In the video is using redirect_to, why?
    end
  end