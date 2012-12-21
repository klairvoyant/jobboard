class Education < ActiveRecord::Base
  attr_accessible :country, :course, :end_date, :level, :resume_id, :school_name, :school_type, :start_date, :state
  validates :country, :course, :level, :school_name, :school_type, :state,:resume_id, :presence => true
  validates :resume_id, :numericality => { :only_integer => true }
  belongs_to :resume

  searchable do
    text :country, :course, :school_name, :state
  end
end
