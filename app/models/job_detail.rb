class JobDetail < ActiveRecord::Base
  attr_accessible :category, :company, :description, :direct_employee, :education_level, :experience, :job_posted_date, :job_title, :job_type, :staffing_agency, :zip_code
  searchable do
    text :company, :description, :education_level, :experience, :job_posted_date, :job_title, :zip_code
  end
end
