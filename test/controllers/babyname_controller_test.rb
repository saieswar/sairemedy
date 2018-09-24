require 'test_helper'

class BabynameControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get namecorrection" do
    get :namecorrection
    assert_response :success
  end

end
