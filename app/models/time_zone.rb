class TimeZone < ActiveRecord::Base
  attr_accessible :time_zone, :user_id
  belongs_to :user
  validates :time_zone,:user_id, :presence => true
  validates :user_id, :numericality => { :only_integer => true }
end
