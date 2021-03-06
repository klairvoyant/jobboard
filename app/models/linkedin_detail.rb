class LinkedinDetail < ActiveRecord::Base
  attr_accessible :first_name,:lastName,:headline,:public_profile_url,:user_id
  belongs_to :user
  searchable do
    text :first_name,:lastName,:headline,:public_profile_url
  end
end
