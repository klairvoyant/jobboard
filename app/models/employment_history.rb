class EmploymentHistory < ActiveRecord::Base
  attr_accessible :company_name, :end_date, :job_description, :job_title, :resume_id, :start_date
  validates :company_name,:job_description, :job_title, :presence => true
end
