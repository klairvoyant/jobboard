class DropTableTimeZoneForDifferentPrimaryKey < ActiveRecord::Migration
  def up
    drop_table :time_zones
  end

  def down
  end
end
