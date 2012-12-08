class AddSomeData < ActiveRecord::Migration
  def up
    execute("insert into interest_areas(interest,created_at,updated_at) values('IT','2012-11-14 13:34:24','2012-11-14 13:34:24');")
    execute("insert into job_types(job_type,created_at,updated_at) values('General Manager','2012-11-14 13:34:24','2012-11-14 13:34:24');")
    execute("insert into salary_ranges(salary_range,created_at,updated_at) values('Above 2000','2012-11-14 13:34:24','2012-11-14 13:34:24');")
  end

  def down
  end
end
