class CreateSearchPreferences < ActiveRecord::Migration
  def change
    create_table :search_preferences do |t|
      t.integer :user_id
      t.integer :category_id
      t.string :city
      t.string :state
      t.string :zipcode

      t.timestamps
    end
  end
end
