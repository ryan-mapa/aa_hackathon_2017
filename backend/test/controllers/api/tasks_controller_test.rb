require 'test_helper'

class Api::TasksControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get api_tasks_create_url
    assert_response :success
  end

end
