class ModifyBooleanFieldsInProgramRequirements < ActiveRecord::Migration[5.0]
  def change
		#sqlite3 workaround --> Ideally could have just used change_column_null and change_column_default methods
		change_table :program_requirements do |t|
			t.remove :disabled
			t.remove :veteran
			t.boolean :disabled, null: false, default: false
			t.boolean :veteran, null: false, default: false
		end	
  end
end
