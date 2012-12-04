class Privacy < ActiveRecord::Base
  attr_accessible :privacy, :resume_id, :user_id
  validates :user_id,:resume_id, :presence => true
  validates :resume_id, :user_id, :numericality => { :only_integer => true }
  belongs_to :resume

end
