class CreateTableTimeZoneWithDifferentPrimaryKey < ActiveRecord::Migration
  def up
    create_table :time_zones, :id => false  do |t|
      t.string :time_zone
      t.integer :user_id
      t.timestamps
    end
    execute "ALTER TABLE time_zones ADD PRIMARY KEY (user_id);"
  end

  def down
  end
end
