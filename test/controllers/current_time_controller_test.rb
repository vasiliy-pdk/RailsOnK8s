require "test_helper"

class CurrentTimeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get current_time_index_url
    assert_response :success
  end
end
