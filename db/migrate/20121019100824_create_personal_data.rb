class CreatePersonalData < ActiveRecord::Migration
  def change
    create_table :personal_data do |t|
      t.integer :user_id
      t.string :name
      t.string :school
      t.string :area_of_study
      t.string :email
      t.string :phone
      t.string :photo
      t.string :video
      t.text :about_me
      t.text :experience

      t.timestamps
    end
  end
end
