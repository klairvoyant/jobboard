class PersonalDatum < ActiveRecord::Base
  attr_accessible :about_me, :area_of_study, :email, :experience, :name, :phone, :photo, :school, :user_id, :video
  mount_uploader :photo, ResumeUploader
  mount_uploader :video, VideoUploader
end
