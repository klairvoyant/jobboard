class RemoveTwoColumnsFromResumePersonalDatum < ActiveRecord::Migration
  def up
    remove_column :resume_personal_data, :user_photo

  end

  def down
    add_column :resume_personal_data, :timezone, :string

  end
end
