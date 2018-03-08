require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get like" do
    get user_like_url
    assert_response :success
  end

end
