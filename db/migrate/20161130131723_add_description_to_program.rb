class AddDescriptionToProgram < ActiveRecord::Migration[5.0]
  def change
		change_table :Programs do |t|
			t.text :description
		end
  end
end
