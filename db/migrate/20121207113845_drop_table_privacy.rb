class DropTablePrivacy < ActiveRecord::Migration
  def up
    drop_table :privacies
  end

  def down
  end
end
