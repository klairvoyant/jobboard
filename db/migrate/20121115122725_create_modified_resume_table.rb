class CreateModifiedResumeTable < ActiveRecord::Migration
  def up
    create_table :resumes do |t|
      t.integer :user_id
      t.integer :option_no
      t.string :file_name
      t.integer :type
      t.text :data
      t.timestamps
    end
  end

  def down
  end
end
