class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.integer :resume_id
      t.string :skill_name
      t.integer :skill_years

      t.timestamps
    end
  end
end
