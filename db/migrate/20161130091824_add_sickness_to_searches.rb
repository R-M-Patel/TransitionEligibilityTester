class AddSicknessToSearches < ActiveRecord::Migration[5.0]
  def change
    add_column :searches, :renal, :boolean
    add_column :searches, :als, :boolean
  end
end
