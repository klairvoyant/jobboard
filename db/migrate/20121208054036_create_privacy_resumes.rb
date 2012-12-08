class CreatePrivacyResumes < ActiveRecord::Migration
  def change
    create_table :privacy_resumes do |t|
      t.integer :user_id
      t.integer :resume_id
      t.boolean :privacy

      t.timestamps
    end
  end
end
