require 'test_helper'

class LogosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get logos_index_url
    assert_response :success
  end

  test "should get show" do
    get logos_show_url
    assert_response :success
  end

  test "should get new" do
    get logos_new_url
    assert_response :success
  end

  test "should get edit" do
    get logos_edit_url
    assert_response :success
  end

end
