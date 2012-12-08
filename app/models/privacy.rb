class Privacy < ActiveRecord::Base
  attr_accessible :privacy, :user_id
  validates :user_id,:presence => true
  validates :user_id, :numericality => { :only_integer => true }
  belongs_to :user

end
