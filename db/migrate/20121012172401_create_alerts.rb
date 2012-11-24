class CreateAlerts < ActiveRecord::Migration
  def change
    create_table :alerts do |t|
      t.integer :user_id
      t.integer :alert_type
      t.text :message

      t.timestamps
    end
  end
end
