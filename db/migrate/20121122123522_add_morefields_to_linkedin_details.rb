class AddMorefieldsToLinkedinDetails < ActiveRecord::Migration
  def change
    add_column :linkedin_details, :first_name, :string
    add_column :linkedin_details, :lastName, :string
    add_column :linkedin_details, :headline, :string
    add_column :linkedin_details, :public_profile_url, :string
  end
end
