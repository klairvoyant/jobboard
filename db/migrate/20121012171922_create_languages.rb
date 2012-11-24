class CreateLanguages < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      t.integer :resume_id
      t.string :language_name
      t.string :language_proficiency

      t.timestamps
    end
  end
end
