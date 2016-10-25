require 'test_helper'

class UserPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get user_pages_home_url
    assert_response :success
  end

  test "should get result" do
    get user_pages_result_url
    assert_response :success
  end

end
