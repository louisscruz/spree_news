class Spree::Post < ActiveRecord::Base
  validates_presence_of :title, :description, :event_month, :event_day, :event_year, :event_time

  def :event_month
  end

  def :event_day
  end

  def :event_year
  end

  def :event_time
  end

  scope :published, lambda { where(:published => true) }
  scope :latest, order("created_at DESC").limit(3)
end
