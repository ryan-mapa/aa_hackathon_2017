require 'test_helper'

class Api::AssignmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get api_assignments_create_url
    assert_response :success
  end

  test "should get index" do
    get api_assignments_index_url
    assert_response :success
  end

  test "should get show" do
    get api_assignments_show_url
    assert_response :success
  end

end
