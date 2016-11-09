class RemoveContributor < ActiveRecord::Migration[5.0]
  def change
		change_table :users do |t|
			t.remove :contributor
		end
  end
end
