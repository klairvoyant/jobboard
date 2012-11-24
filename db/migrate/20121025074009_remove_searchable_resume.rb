class RemoveSearchableResume < ActiveRecord::Migration
  def up
    remove_column :resumes, :searchable
  end

  def down
  end
end
