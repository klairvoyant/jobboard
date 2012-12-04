class Certification < ActiveRecord::Base
  attr_accessible :certification_name, :certification_year, :resume_id
  validates :certification_name, :resume_id, :presence => true
  validates :resume_id, :numericality => { :only_integer => true }
  belongs_to :resume
end
