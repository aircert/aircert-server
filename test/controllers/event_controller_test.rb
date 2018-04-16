require 'test_helper'

class EventControllerTest < ActionDispatch::IntegrationTest
  test "should get page_view" do
    get event_page_view_url
    assert_response :success
  end

end
