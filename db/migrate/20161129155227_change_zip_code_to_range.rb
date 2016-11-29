class ChangeZipCodeToRange < ActiveRecord::Migration[5.0]
  def change
		change_table :program_requirements do |t|
			t.remove :zip_code_list
			t.integer :zip_code_range_start
			t.integer :zip_code_range_end
		end
  end
end
