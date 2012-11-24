class AddRegisteredToPersonalData < ActiveRecord::Migration
  def change
    add_column :personal_data, :register, :boolean
  end
end
