require "test_helper"

class LoginerControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get loginer_login_url
    assert_response :success
  end
end
