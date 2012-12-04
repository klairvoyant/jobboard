class RenameTypeInResume < ActiveRecord::Migration
  def up
    rename_column :resumes, :type, :resume_type
  end

  def down
  end
end
