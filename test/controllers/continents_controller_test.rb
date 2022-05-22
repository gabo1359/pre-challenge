require "test_helper"

class ContinentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get continents_index_url
    assert_response :success
  end

  test "should get show" do
    get continents_show_url
    assert_response :success
  end

  test "should get create" do
    get continents_create_url
    assert_response :success
  end

  test "should get update" do
    get continents_update_url
    assert_response :success
  end

  test "should get destroy" do
    get continents_destroy_url
    assert_response :success
  end
end
