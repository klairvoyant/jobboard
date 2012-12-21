class Skill < ActiveRecord::Base
  attr_accessible :resume_id, :skill_name, :skill_years
  validates :skill_name, :skill_years,:resume_id, :presence => true
  validates :resume_id,:skill_years, :numericality => { :only_integer => true }
  belongs_to :resume
  searchable do
    text :skill_name, :skill_years
  end
end
