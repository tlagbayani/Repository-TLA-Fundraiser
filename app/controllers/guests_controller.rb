class GuestsController < ApplicationController
  before_action :authenticate_user!

  def create
    @event = Event.find(params[:event_id])
    @event.guests.create(guest_params.merge(user: current_user))
    redirect_to event_path(@event)
  end  
  
  private

  def guest_params
    params.require(:guest).permit(:first_name, :last_name, :number_of_guest)
  end  
end
