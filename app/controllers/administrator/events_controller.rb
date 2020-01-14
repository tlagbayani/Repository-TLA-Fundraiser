class Administrator::EventsController < ApplicationController
  before_action :authenticate_user!

  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.create(event_params)
    redirect_to administrator_event_path(@event)
  end

  def show
    @event = Event.find(params[:id])
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :cost)
  end

end
