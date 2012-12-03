class InterestArea < ActiveRecord::Base
  attr_accessible :interest
  has_one :objective
  def to_label
    "#{interest}"

  end

end
