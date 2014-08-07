class Spree::Post < ActiveRecord::Base
  validates_presence_of :title, :description, :event

  def event
  end

  scope :published, lambda { where(:published => true) }
  scope :latest, order("created_at DESC").limit(3)
end
