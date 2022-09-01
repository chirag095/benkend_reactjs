require "test_helper"

class Admin::AmenitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_amenities_index_url
    assert_response :success
  end
end
