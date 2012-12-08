class AddSomeData < ActiveRecord::Migration
  def up
    execute("insert into interest_areas(interest) values('IT');")
    execute("insert into job_types(job_type) values('General Manager');")
    execute("insert into salary_ranges(salary_range) values('Above 2000');")
  end

  def down
  end
end
