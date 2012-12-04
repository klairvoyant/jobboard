class Resume < ActiveRecord::Base
  attr_accessible :data, :file_name, :option_no, :type, :user_id
  mount_uploader :file_name, ResumeUploader
  belongs_to :user



  has_one  :resume_personal_data
  has_one  :objective
  has_many :employment_histories
  has_many :educations
  has_many :skills
  has_many :languages
  has_many :certifications
  has_one  :privacies
  has_many :interviews

  #has_one  :resume_job_data







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
