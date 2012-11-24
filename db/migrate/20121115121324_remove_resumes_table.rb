class RemoveResumesTable < ActiveRecord::Migration
  def up
    drop_table :resumes
  end

  def down
  end
end
