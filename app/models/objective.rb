class Objective < ActiveRecord::Base
  attr_accessible :area_of_interest, :job_type, :objective, :salary_range
  validates :interest_area_id, :job_type_id, :objective, :salary_range_id,:resume_id, :presence => true
  belongs_to :interest_area
  belongs_to :job_type
  belongs_to :salary_range


end
