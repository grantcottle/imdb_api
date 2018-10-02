require 'test_helper'

class Api::V1::SearchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_search = api_v1_searches(:one)
  end

  test "should get index" do
    get api_v1_searches_url, as: :json
    assert_response :success
  end

  test "should create api_v1_search" do
    assert_difference('Api::V1::Search.count') do
      post api_v1_searches_url, params: { api_v1_search: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show api_v1_search" do
    get api_v1_search_url(@api_v1_search), as: :json
    assert_response :success
  end

  test "should update api_v1_search" do
    patch api_v1_search_url(@api_v1_search), params: { api_v1_search: {  } }, as: :json
    assert_response 200
  end

  test "should destroy api_v1_search" do
    assert_difference('Api::V1::Search.count', -1) do
      delete api_v1_search_url(@api_v1_search), as: :json
    end

    assert_response 204
  end
end
