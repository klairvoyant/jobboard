class Skill < ActiveRecord::Base
  attr_accessible :resume_id, :skill_name, :skill_years
  validates :skill_name, :skill_years, :presence => true
end
