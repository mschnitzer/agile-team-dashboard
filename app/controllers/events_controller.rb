class EventsController < ApplicationController
  before_action :set_event, only: %i{show edit update destroy}

  def index
    @events = Event.all
    respond_to do |format|
      format.html
      format.json { render json: calendar_data  }
    end
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(permitted_params)
    if @event.save
      flash[:notice] = 'perfect'
      redirect_to events_path
    else
      flash.now[:error] = 'ohhhhhhhh'
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @event.update_attributes(permitted_params)
      flash[:notice] = 'perfect'
      redirect_to events_path
    else
      flash.now[:error] = 'ohhhhhhhh'
      render :new
    end
  end

  def destroy
    if @event.destroy
      flash[:notice] = 'perfect'
    else
      flash[:error] = 'ohhhhhhhh'
    end
    redirect_to events_path
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def permitted_params
    params.require(:event).permit(:name, :location, :start_date, :end_date, :event_type)
  end

  def calendar_data
    data = []
    @events.each do |event|
      color = event.absence? ? 'red' : 'green'
      data << CalendarEvent.new(title: event.full_data,
                                start: event.start_date,
                                end: event.end_date,
                                color: color)
    end
    return data
  end
end
