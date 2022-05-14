require "test_helper"

class GeographicIconsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get geographic_icons_index_url
    assert_response :success
  end

  test "should get show" do
    get geographic_icons_show_url
    assert_response :success
  end

  test "should get create" do
    get geographic_icons_create_url
    assert_response :success
  end

  test "should get update" do
    get geographic_icons_update_url
    assert_response :success
  end

  test "should get destroy" do
    get geographic_icons_destroy_url
    assert_response :success
  end
end
