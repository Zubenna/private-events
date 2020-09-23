class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    if session[:username].nil?
      @user = User.new
    else
    @user = User.find(session[:id])
    redirect_to @user
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:username] = @user.username
      session[:id] = @user.id
      redirect_to '/welcome'
    else
      render('new')
    end
  end

  def show
    @user = User.find(params[:id])
    @created_events = @user.created_events
    @upcoming_events = current_user.upcoming_events
    @previous_events = current_user.previous_events
  end

  def destroy
   session.delete(:id)
   @current_user = nil
  end

  private
  def user_params
    params.require(:user).permit(:full_name, :username, :email)
  end
end
