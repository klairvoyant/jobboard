class CreateInterestAreas < ActiveRecord::Migration
  def change
    create_table :interest_areas do |t|
      t.string :interest

      t.timestamps
    end
  end
end
