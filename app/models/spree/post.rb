class Spree::Post < ActiveRecord::Base
  validates_presence_of :title, :description, :event_month, :event_day, :event_year, :event_time
  attr_accessor :event_day, :event_day, :event_year, :event_time

  scope :published, lambda { where(:published => true) }
  scope :latest, order("created_at DESC").limit(3)
end
