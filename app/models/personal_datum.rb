class PersonalDatum < ActiveRecord::Base
  attr_accessible :about_me, :area_of_study, :email, :experience, :name, :phone, :photo, :school, :user_id, :video
  mount_uploader :photo, ResumeUploader
  mount_uploader :video, VideoUploader

  validates :about_me, :area_of_study, :email, :experience, :name, :phone, :school, :user_id, :presence => true
  validates :user_id, :numericality => { :only_integer => true }
  validates_format_of :email, :with => /^(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})$/i
end
