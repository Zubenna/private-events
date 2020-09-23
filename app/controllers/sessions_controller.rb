class SessionsController < ApplicationController
  def new
  end

  def create
   @user = User.find_by(username: params[:login][:username])

    if @user
      session[:user_id] = @user.id.to_s
      session[:username] = @user.username
      redirect_to @user
    else
      redirect_to '/login'
    end
  end

  def destroy
    session.delete(:user_id)
    session.delete(:username)
    @current_user = nil
    redirect_to '/welcome'
  end
end
