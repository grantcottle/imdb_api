require 'test_helper'

class Api::V1::ShowsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_show = api_v1_shows(:one)
  end

  test "should get index" do
    get api_v1_shows_url, as: :json
    assert_response :success
  end

  test "should create api_v1_show" do
    assert_difference('Api::V1::Show.count') do
      post api_v1_shows_url, params: { api_v1_show: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show api_v1_show" do
    get api_v1_show_url(@api_v1_show), as: :json
    assert_response :success
  end

  test "should update api_v1_show" do
    patch api_v1_show_url(@api_v1_show), params: { api_v1_show: {  } }, as: :json
    assert_response 200
  end

  test "should destroy api_v1_show" do
    assert_difference('Api::V1::Show.count', -1) do
      delete api_v1_show_url(@api_v1_show), as: :json
    end

    assert_response 204
  end
end
