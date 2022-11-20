require "test_helper"

class TheaterControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get theater_new_url
    assert_response :success
  end

  test "should get create" do
    get theater_create_url
    assert_response :success
  end
end
