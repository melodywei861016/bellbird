require 'test_helper'

class AlarmControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get alarm_index_url
    assert_response :success
  end

end
