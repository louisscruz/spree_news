class Spree::Post < ActiveRecord::Base
  validates_presence_of :title, :description, :event_date
  composed_of :event_date,
              :class_name => 'Date',
              :mapping => %w(Date to_s),
              :constructor => Proc.new{ |item| item },
              :converter => Proc.new{ |item| item }

  scope :published, lambda { where(:published => true) }
  scope :latest, order("created_at DESC").limit(3)
end
