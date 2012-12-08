class RemoveResumeIdFromPrivacy < ActiveRecord::Migration
  def up
    remove_column :privacies, :resume_id
  end

  def down
    add_column :privacies, :resume_id, :string
  end
end
