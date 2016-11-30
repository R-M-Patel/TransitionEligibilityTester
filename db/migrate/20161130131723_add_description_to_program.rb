class AddDescriptionToProgram < ActiveRecord::Migration[5.0]
  def change
		change_table :programs do |t|
			t.text :description
		end
  end
end
