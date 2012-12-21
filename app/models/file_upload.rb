class FileUpload < ActiveRecord::Base
  attr_accessible :file_path, :file_type, :user_id
  mount_uploader :file_path, ResumeUploader
  validates :file_path, :file_type, :user_id, :presence => true
  validates :file_type, :user_id, :numericality => { :only_integer => true }
  belongs_to :user
  searchable do
    text :file_path
  end
end
