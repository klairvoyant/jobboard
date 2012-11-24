class CreateResumePersonalData < ActiveRecord::Migration
  def change
    create_table :resume_personal_data do |t|
      t.integer :resume_id
      t.string :resume_name
      t.string :user_photo
      t.string :city
      t.string :state
      t.string :country
      t.string :zip
      t.string :phone
      t.string :timezone
      t.string :linkedin_profile_path
      t.string :facebook_profile_path
      t.text :about_me
      t.text :experience

      t.timestamps
    end
  end
end
