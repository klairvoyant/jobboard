class DropTableSearchPreferences < ActiveRecord::Migration
  def up
    drop_table :search_preferences
  end

  def down
  end
end
