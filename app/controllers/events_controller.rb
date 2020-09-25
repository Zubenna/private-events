class EventsController < ApplicationController
  def index
    @events = Event.all
    @all_upcoming_events = Event.all_upcoming_events
    @all_past_events = Event.all_past_events
  end

  def new
    @event = Event.new
  end

  def show
    @event = Event.find(params[:id])
  end

  def create
    @user = current_user
    @event = @user.created_events.build(event_params)
    if @event.save
      flash.notice = 'Event created successfully'
      redirect_to @user
    else
      flash[:notice] = 'Something went wrong'
      render 'new'
    end
  end

  private
  
  def event_params
    params.require(:event).permit(:title, :description, :event_date)
  end
end
