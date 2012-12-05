class Category < ActiveRecord::Base
  attr_accessible :category
  has_one :search_preference
  def to_label
    "#{category}"

  end
end
