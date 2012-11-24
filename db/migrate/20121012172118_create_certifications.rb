class CreateCertifications < ActiveRecord::Migration
  def change
    create_table :certifications do |t|
      t.integer :resume_id
      t.string :certification_name
      t.integer :certification_year

      t.timestamps
    end
  end
end
