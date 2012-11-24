class CreateInterviews < ActiveRecord::Migration
  def change
    create_table :interviews do |t|
      t.integer :resume_id
      t.integer :interview_type
      t.integer :job_id

      t.timestamps
    end
  end
end
