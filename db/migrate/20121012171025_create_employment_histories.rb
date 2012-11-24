class CreateEmploymentHistories < ActiveRecord::Migration
  def change
    create_table :employment_histories do |t|
      t.integer :resume_id
      t.string :company_name
      t.date :start_date
      t.date :end_date
      t.string :job_title
      t.text :job_description

      t.timestamps
    end
  end
end
