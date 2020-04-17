require 'test_helper'

class Api::V1::AuthControllerTest < ActionDispatch::IntegrationTest
  test "should get current" do
    get api_v1_auth_current_url
    assert_response :success
  end

end
