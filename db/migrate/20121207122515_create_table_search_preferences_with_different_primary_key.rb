class CreateTableSearchPreferencesWithDifferentPrimaryKey < ActiveRecord::Migration
  def up
    create_table :search_preferences, :id => false  do |t|
      t.string :city
      t.string :state
      t.string :zipcode
      t.integer :category_id
      t.integer :user_id
      t.timestamps
    end
    execute "ALTER TABLE search_preferences ADD PRIMARY KEY (user_id);"
  end

  def down
  end
end
