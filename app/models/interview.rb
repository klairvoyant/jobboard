class Interview < ActiveRecord::Base
  attr_accessible :interview_type, :job_id, :resume_id
  belongs_to :resume
end
