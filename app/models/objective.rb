class Objective < ActiveRecord::Base
  attr_accessible :interest_area_id, :job_type_id, :objective, :salary_range_id,:resume_id
  validates :interest_area_id, :job_type_id, :objective, :salary_range_id,:resume_id, :presence => true
  validates :interest_area_id,:job_type_id, :salary_range_id,:resume_id, :numericality => { :only_integer => true }

  belongs_to :resume
  belongs_to :interest_area
  belongs_to :job_type
  belongs_to :salary_range


end
