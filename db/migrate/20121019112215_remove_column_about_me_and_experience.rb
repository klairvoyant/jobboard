class RemoveColumnAboutMeAndExperience < ActiveRecord::Migration
  def up
    remove_column :resume_personal_data, :about_me
    remove_column :resume_personal_data, :experience
  end

  def down
  end
end
