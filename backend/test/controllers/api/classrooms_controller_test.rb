require 'test_helper'

class Api::ClassroomsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get api_classrooms_create_url
    assert_response :success
  end

  test "should get index" do
    get api_classrooms_index_url
    assert_response :success
  end

  test "should get show" do
    get api_classrooms_show_url
    assert_response :success
  end

end
