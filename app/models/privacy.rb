class Privacy < ActiveRecord::Base
  attr_accessible :privacy, :resume_id, :user_id
end
