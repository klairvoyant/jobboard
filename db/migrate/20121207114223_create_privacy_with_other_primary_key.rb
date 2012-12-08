class CreatePrivacyWithOtherPrimaryKey < ActiveRecord::Migration
  def up
    create_table :privacies, :id => false  do |t|
      t.boolean :privacy
      t.integer :resume_id
      t.integer :user_id
      t.timestamps
    end
    execute "ALTER TABLE privacies ADD PRIMARY KEY (user_id);"
  end

  def down
  end
end
