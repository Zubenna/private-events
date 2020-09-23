class AttendanceController < ApplicationController
  def create
    @event = Event.find(params[:id])
    if current_user.nil?
      # flash[:alert] = 'You need to login'
      redirect_to '/welcome'
    else
      current_user.attended_events << @event
      redirect_to new_event_path
      # flash[:notice] = 'You are goint to new event'
    end
  end
end
