class Resume < ActiveRecord::Base
  attr_accessible :data, :file_name, :option_no, :type, :user_id
  mount_uploader :file_name, ResumeUploader
  belongs_to :user
  has_one  :resume_personal_data
  validates_presence_of :option_no, :user_id
  validates_presence_of :file_name, :if=> :option_no3?
  validates_presence_of :data, :if=> :option_no4?
  #
  #
  def option_no3?
     :option_no==3
    end

  def option_no4?
    :option_no==4

  end
end
