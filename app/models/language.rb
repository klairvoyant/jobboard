class Language < ActiveRecord::Base
  attr_accessible :language_name, :language_proficiency, :resume_id
  validates :language_name, :language_proficiency, :presence => true

end
