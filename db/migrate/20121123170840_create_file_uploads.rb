class CreateFileUploads < ActiveRecord::Migration
  def change
    create_table :file_uploads do |t|
      t.integer :user_id
      t.integer :file_type
      t.string :file_path

      t.timestamps
    end
  end
end
