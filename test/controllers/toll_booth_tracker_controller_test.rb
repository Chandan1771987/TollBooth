require "test_helper"

class TollBoothTrackerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get toll_booth_tracker_index_url
    assert_response :success
  end

  test "should get show" do
    get toll_booth_tracker_show_url
    assert_response :success
  end
end
