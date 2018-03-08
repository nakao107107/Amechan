require 'test_helper'

class ClaimsControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get claims_search_url
    assert_response :success
  end

end
