class CreateLinkedinDetails < ActiveRecord::Migration
  def change
    create_table :linkedin_details do |t|
      t.integer :user_id
      t.string :email
      t.string :profile_id

      t.timestamps
    end
  end
end
