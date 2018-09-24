require 'test_helper'

class DashboardControllerTest < ActionController::TestCase
  test "should get index:get" do
    get :index:get
    assert_response :success
  end

end
