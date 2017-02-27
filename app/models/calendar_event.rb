class CalendarEvent
  include ActiveModel::Model
  attr_accessor :title, :start, :end, :color, :textColor
end
