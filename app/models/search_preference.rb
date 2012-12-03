class SearchPreference < ActiveRecord::Base
  attr_accessible :category_id, :city, :state, :user_id, :zipcode
end
