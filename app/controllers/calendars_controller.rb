class CalendarsController < ApplicationController

  def index
    @events = Event.all
    respond_to do |format|
      format.html
      format.json { render json: calendar_data  }
    end
  end

  private

  def calendar_data
    @events.map do |event|
      CalendarEvent.new(title: event.full_data,
                        start: event.start_date,
                        end: event.end_date,
                        color: event.color)
    end
  end

end
