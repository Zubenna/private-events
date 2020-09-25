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
      flash[:notice] = "Profile for #{@user.full_name} Created successfully"
      session[:username] = @user.username
      session[:id] = @user.id
      redirect_to '/welcome'
    else
      flash[:notice] = 'Something went wrong'
      render('new')
    end
  end

  def show
    @user = User.find(params[:id])
    @created_events = @user.created_events
    @upcoming_events = @user.upcoming_created_events
    @previous_events = @user.previous_created_events
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
