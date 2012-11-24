class ResumePersonalDatum < ActiveRecord::Base
  attr_accessible :about_me, :city, :country, :experience, :facebook_profile_path, :linkedin_profile_path, :phone, :resume_id, :resume_name, :state, :timezone, :user_photo, :zip
  validates :zip,:phone,:resume_name, :presence => true

end
