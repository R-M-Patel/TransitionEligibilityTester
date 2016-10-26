class AddAssetToSearches < ActiveRecord::Migration[5.0]
  def change
    add_column :searches, :assetAmount, :integer
  end
end
