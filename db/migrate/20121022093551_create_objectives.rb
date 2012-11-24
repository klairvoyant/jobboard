class CreateObjectives < ActiveRecord::Migration
  def change
    create_table :objectives do |t|
      t.text :objective
      t.string :area_of_interest
      t.string :job_type
      t.string :salary_range

      t.timestamps
    end
  end
end
