class ResumeJobDatum < ActiveRecord::Base
  attr_accessible :area_of_interest, :job_type, :objective, :resume_id, :salary
  searchable do
    text :area_of_interest, :job_type, :objective, :salary
  end
end
