class RemoveEmailProfileIdFromLinkedinDetail < ActiveRecord::Migration
  def up
    remove_column :linkedin_details, :profile_id
    remove_column :linkedin_details, :email
  end

  def down
    add_column :linkedin_details, :email, :string
    add_column :linkedin_details, :profile_id, :string
  end
end
