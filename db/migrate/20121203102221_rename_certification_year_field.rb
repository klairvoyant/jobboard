class RenameCertificationYearField < ActiveRecord::Migration
  def up
    remove_column :certifications, :certification_year
    add_column :certifications, :certification_year, :date
  end

  def down
  end
end
