class CreateSalaryRanges < ActiveRecord::Migration
  def change
    create_table :salary_ranges do |t|
      t.string :salary_range

      t.timestamps
    end
  end
end
