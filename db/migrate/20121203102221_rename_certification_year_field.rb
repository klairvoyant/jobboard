class RenameCertificationYearField < ActiveRecord::Migration
  def up
    change_column :certifications, :certification_year, :date
  end

  def down
  end
end
