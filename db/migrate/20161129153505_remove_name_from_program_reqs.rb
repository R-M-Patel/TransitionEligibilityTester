class RemoveNameFromProgramReqs < ActiveRecord::Migration[5.0]
  def change
		change_table :program_requirements do |t|
			reversible do |dir|
				dir.up do
					t.remove :name
				end
				
				dir.down do
					t.string :name
				end
			end
		end
  end
end
