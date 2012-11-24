class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.integer :resume_id
      t.string :school_name
      t.string :school_type
      t.string :state
      t.string :country
      t.date :start_date
      t.date :end_date
      t.string :course
      t.string :level

      t.timestamps
    end
  end
end
