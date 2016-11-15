class ProgramReqsRelation < ActiveRecord::Migration[5.0]
  def change
		change_table :program_requirements do |t|
			t.remove :name
			t.belongs_to :programs, index: true
		end
  end
end
