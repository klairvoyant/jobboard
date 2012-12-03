class JobType < ActiveRecord::Base
  attr_accessible :job_type
  has_one :objective
  def to_label

    "#{job_type}"

  end
end
