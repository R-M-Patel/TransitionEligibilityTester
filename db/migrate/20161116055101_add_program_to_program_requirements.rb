class AddProgramToProgramRequirements < ActiveRecord::Migration[5.0]
  def change
    add_reference :program_requirements, :program, foreign_key: true
  end
end
