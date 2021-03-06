class Spree::Post < ActiveRecord::Base
  validates_presence_of :title, :event_date

  scope :published, lambda { where(:published => true) }
  scope :latest, order("created_at DESC").limit(3)
end
