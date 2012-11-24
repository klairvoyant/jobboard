class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :role, :integer
    add_column :users, :first_name, :string
    add_column :users, :second_name, :string
    add_column :users, :policy, :boolean
  end
end
