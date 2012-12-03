class RenameThreeFields < ActiveRecord::Migration
  def up
    rename_column :objectives, :area_of_interest, :interest_area_id
    rename_column :objectives, :job_type, :job_type_id
    rename_column :objectives, :salary_range, :salary_range_id
  end

  def down
  end
end
