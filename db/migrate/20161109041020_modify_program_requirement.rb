class ModifyProgramRequirement < ActiveRecord::Migration[5.0]
  def change
		change_table :program_requirements do |t|
			t.integer :min_income
			t.rename :income_threshold, :max_income
			t.string :name
		end
		create_table :users do |t|
			t.string :name
			t.string :email
			t.string :password
			t.boolean :administrator
			t.boolean :contributor
		end
  end
end
