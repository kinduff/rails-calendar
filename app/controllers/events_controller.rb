class EventsController < ApplicationController
  def new
    @event = Event.new
  end
  def create
    @event = Event.new params[:event]
    if @event.save
      redirect_to calendar_path
    else
      render :new
    end
  end
  def show
    @event = Event.find params[:id]
  end
  def edit
    @event = Event.find params[:id]
  end
  def update
    @event = Event.find params[:id]
    if @event.update_attributes params[:event]
      redirect_to calendar_path
    else
      render :edit
    end
  end
  def destroy
    event = Event.find params[:id]
    if event.destroy
      redirect_to calendar_path
    else
      redirect_to calendar_path
    end
  end
end
