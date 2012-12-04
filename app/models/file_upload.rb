class FileUpload < ActiveRecord::Base
  attr_accessible :file_path, :file_type, :user_id
  mount_uploader :file_path, ResumeUploader
  belongs_to :user
end
