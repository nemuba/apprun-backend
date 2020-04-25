require 'test_helper'

class Api::V1::SponsorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_sponsor = api_v1_sponsors(:one)
  end

  test "should get index" do
    get api_v1_sponsors_url, as: :json
    assert_response :success
  end

  test "should create api_v1_sponsor" do
    assert_difference('Api::V1::Sponsor.count') do
      post api_v1_sponsors_url, params: { api_v1_sponsor: { name: @api_v1_sponsor.name, telephone: @api_v1_sponsor.telephone } }, as: :json
    end

    assert_response 201
  end

  test "should show api_v1_sponsor" do
    get api_v1_sponsor_url(@api_v1_sponsor), as: :json
    assert_response :success
  end

  test "should update api_v1_sponsor" do
    patch api_v1_sponsor_url(@api_v1_sponsor), params: { api_v1_sponsor: { name: @api_v1_sponsor.name, telephone: @api_v1_sponsor.telephone } }, as: :json
    assert_response 200
  end

  test "should destroy api_v1_sponsor" do
    assert_difference('Api::V1::Sponsor.count', -1) do
      delete api_v1_sponsor_url(@api_v1_sponsor), as: :json
    end

    assert_response 204
  end
end
