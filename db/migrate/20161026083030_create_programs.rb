class CreatePrograms < ActiveRecord::Migration[5.0]
  def change
    drop_table :programs
    create_table :programs do |t|
      t.string :name
      t.string :abbreviation

      t.timestamps
    end
  end
end
