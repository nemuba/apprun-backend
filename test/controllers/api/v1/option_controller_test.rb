require 'test_helper'

class Api::V1::OptionControllerTest < ActionDispatch::IntegrationTest
  test "should get get_modalities" do
    get api_v1_option_get_modalities_url
    assert_response :success
  end

end
