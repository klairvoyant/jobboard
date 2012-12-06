class ResumePersonalDatum < ActiveRecord::Base
  attr_accessible :city, :country, :facebook_profile_path, :linkedin_profile_path, :phone, :resume_id, :resume_name,:state, :zip
  validates :zip,:phone,:resume_name,:resume_id,:country, :presence => true

  belongs_to :resume

end
