class Objective < ActiveRecord::Base
  attr_accessible :area_of_interest, :job_type, :objective, :salary_range
  validates :area_of_interest, :job_type, :objective, :salary_range, :presence => true

end
