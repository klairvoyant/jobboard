class Certification < ActiveRecord::Base
  attr_accessible :certification_name, :certification_year, :resume_id
  validates :certification_name, :certification_year, :presence => true
end
