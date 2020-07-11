require 'test_helper'

class ContentsControllerTest < ActionDispatch::IntegrationTest
  test "should get contents" do
    get contents_contents_url
    assert_response :success
  end

end
