class AddLinksToPrograms < ActiveRecord::Migration[5.0]
  def change
		# add link to program site
		change_table :programs do |t|
			t.string :link
		end
		
		change_table :program_requirements do |t|
			t.remove :married
		end
		change_table :searches do |t|
			t.remove :married
		end
  end
end
