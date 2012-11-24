class RemoveTimezoneResumePersonalData < ActiveRecord::Migration
  def up
    remove_column :resume_personal_data, :timezone
  end

  def down
  end
end
