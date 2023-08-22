require "test_helper"

class LivesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get lives_show_url
    assert_response :success
  end

  test "should get create" do
    get lives_create_url
    assert_response :success
  end

  test "should get new" do
    get lives_new_url
    assert_response :success
  end

  test "should get index" do
    get lives_index_url
    assert_response :success
  end
end
