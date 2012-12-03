class CreateTimeZones < ActiveRecord::Migration
  def change
    create_table :time_zones do |t|
      t.integer :user_id
      t.string :time_zone

      t.timestamps
    end
  end
end
