require 'test_helper'

class Api::EnrollmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get api_enrollments_create_url
    assert_response :success
  end

end
