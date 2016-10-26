class CreateProgramRequirements < ActiveRecord::Migration[5.0]
  def change
    create_table :program_requirements do |t|
      t.integer :min_age
      t.integer :max_age
      t.boolean :married
      t.integer :income_threshold
      t.integer :assets_threshold
      t.boolean :veteran
      t.boolean :disabled
      t.text :zip_code_list

      t.timestamps
    end
  end
end
