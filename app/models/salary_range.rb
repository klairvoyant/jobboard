class SalaryRange < ActiveRecord::Base
  attr_accessible :salary_range
  has_one :objective
  def to_label

    "#{salary_range}"

  end
end
