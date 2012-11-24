class CreateJobDetails < ActiveRecord::Migration
  def change
    create_table :job_details do |t|
      t.string :job_title
      t.string :category
      t.string :company
      t.date :job_posted_date
      t.boolean :direct_employee
      t.boolean :staffing_agency
      t.string :job_type
      t.integer :experience
      t.string :education_level
      t.text :description
      t.string :zip_code

      t.timestamps
    end
  end
end
