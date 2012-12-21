class Alert < ActiveRecord::Base
  attr_accessible :alert_type, :message, :user_id
  searchable do
    text :message
  end
end
