class ProgramRequirement < ApplicationRecord
	belongs_to :program
	validates_inclusion_of :disabled, :in => [true, false]
	validates_inclusion_of :veteran, :in => [true, false]
	validates :max_income, presence: true
	validates :zip_code_range_start, presence: true
	validates :zip_code_range_end, presence: true
	validates :max_age, presence: true
	validates :min_age, presence: true
end
