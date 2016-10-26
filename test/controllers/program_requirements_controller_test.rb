require 'test_helper'

class ProgramRequirementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @program_requirement = program_requirements(:one)
  end

  test "should get index" do
    get program_requirements_url
    assert_response :success
  end

  test "should get new" do
    get new_program_requirement_url
    assert_response :success
  end

  test "should create program_requirement" do
    assert_difference('ProgramRequirement.count') do
      post program_requirements_url, params: { program_requirement: { assets_threshold: @program_requirement.assets_threshold, disabled: @program_requirement.disabled, income_threshold: @program_requirement.income_threshold, married: @program_requirement.married, max_age: @program_requirement.max_age, min_age: @program_requirement.min_age, veteran: @program_requirement.veteran, zip_code_list: @program_requirement.zip_code_list } }
    end

    assert_redirected_to program_requirement_url(ProgramRequirement.last)
  end

  test "should show program_requirement" do
    get program_requirement_url(@program_requirement)
    assert_response :success
  end

  test "should get edit" do
    get edit_program_requirement_url(@program_requirement)
    assert_response :success
  end

  test "should update program_requirement" do
    patch program_requirement_url(@program_requirement), params: { program_requirement: { assets_threshold: @program_requirement.assets_threshold, disabled: @program_requirement.disabled, income_threshold: @program_requirement.income_threshold, married: @program_requirement.married, max_age: @program_requirement.max_age, min_age: @program_requirement.min_age, veteran: @program_requirement.veteran, zip_code_list: @program_requirement.zip_code_list } }
    assert_redirected_to program_requirement_url(@program_requirement)
  end

  test "should destroy program_requirement" do
    assert_difference('ProgramRequirement.count', -1) do
      delete program_requirement_url(@program_requirement)
    end

    assert_redirected_to program_requirements_url
  end
end
