class SearchPreference < ActiveRecord::Base
  attr_accessible :category_id, :city, :state, :user_id, :zipcode
  validates :category_id, :city,:state,:user_id,:zipcode, :presence => true
  validates :user_id,:category_id, :numericality => { :only_integer => true }
  belongs_to :category
  belongs_to :user
end
