require 'test_helper'

class Api::V1::ChambersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get api_v1_chambers_show_url
    assert_response :success
  end

end
