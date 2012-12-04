class Language < ActiveRecord::Base
  attr_accessible :language_name, :language_proficiency, :resume_id
  validates :language_name, :language_proficiency,:resume_id, :presence => true
  validates :resume_id, :numericality => { :only_integer => true }
  belongs_to :resume

end
