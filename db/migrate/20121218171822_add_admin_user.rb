class AddAdminUser < ActiveRecord::Migration
  def up
    execute("insert into users(first_name,email,encrypted_password) values('admin','admin@jobboard.com','$2a$10$hqO6oRsGZ2o4ulzITSsIMuiZTEqJqMhWAofH4EZNQVzRVmkfOQLd.');")
  end

  def down
  end
end
