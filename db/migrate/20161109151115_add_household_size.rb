class AddHouseholdSize < ActiveRecord::Migration[5.0]
  def change
		change_table :searches do |t|
			t.integer :household # household size field for searching programs
		end
  end
end
