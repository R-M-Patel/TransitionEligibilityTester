class CreateSearches < ActiveRecord::Migration[5.0]
  def change
    create_table :searches do |t|
      t.integer :zipcode
      t.integer :age
      t.integer :income
      t.boolean :married
      t.boolean :veteran
      t.boolean :disabled

      t.timestamps
    end
  end
end
