class Resume < ActiveRecord::Base
  attr_accessible :data, :file_name, :option_no, :type, :user_id
  mount_uploader :file_name, ResumeUploader
end
