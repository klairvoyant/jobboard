class AddUserIdInterviews < ActiveRecord::Migration
  def up
    add_column :interviews, :user_id, :integer
  end

  def down
    remove_column :interviews, :user_id
  end
end
