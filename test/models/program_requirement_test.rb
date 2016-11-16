require 'test_helper'

class ProgramRequirementTest < ActiveSupport::TestCase
  
	def setup
		@program = Program.new(name: 'Fake', abbreviation: 'FA')
		@program.save()
		
		@program_req = ProgramRequirement.new(programs: @program)
	end
	
	test "programs not nil test" do
		assert @program_req.programs.nil?
	end
	
	test "program_req_valid_test" do
		assert @program_req.valid?
	end
	
	test "program_req_save_test" do
		assert @program_req.save()
	end
end
