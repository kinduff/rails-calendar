class Event < ActiveRecord::Base
  has_event_calendar
  attr_accessible :name, :descripcion, :start_at, :end_at, :all_day
end
