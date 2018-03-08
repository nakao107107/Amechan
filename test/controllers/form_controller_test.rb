require 'test_helper'

class FormControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get form_show_url
    assert_response :success
  end

end
