class CreateResumeJobData < ActiveRecord::Migration
  def change
    create_table :resume_job_data do |t|
      t.integer :resume_id
      t.text :objective
      t.string :area_of_interest
      t.string :job_type
      t.decimal :salary

      t.timestamps
    end
  end
end
