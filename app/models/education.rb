class Education < ActiveRecord::Base
  attr_accessible :country, :course, :end_date, :level, :resume_id, :school_name, :school_type, :start_date, :state
  validates :country, :course, :level, :school_name, :school_type, :state, :presence => true
end
