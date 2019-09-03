require 'test_helper'

class ContinentsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get continents_show_url
    assert_response :success
  end

end
