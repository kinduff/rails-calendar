class Event < ActiveRecord::Base
  has_event_calendar
  attr_accessible :name, :descripcion, :start_at, :end_at, :all_day, :color
  before_save do
    self.all_day ? self.end_at = self.start_at : nil
  end
end
