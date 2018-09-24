require 'test_helper'

class NakshatrasControllerTest < ActionController::TestCase
  setup do
    @nakshatra = nakshatras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nakshatras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nakshatra" do
    assert_difference('Nakshatra.count') do
      post :create, nakshatra: { name: @nakshatra.name }
    end

    assert_redirected_to nakshatra_path(assigns(:nakshatra))
  end

  test "should show nakshatra" do
    get :show, id: @nakshatra
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nakshatra
    assert_response :success
  end

  test "should update nakshatra" do
    patch :update, id: @nakshatra, nakshatra: { name: @nakshatra.name }
    assert_redirected_to nakshatra_path(assigns(:nakshatra))
  end

  test "should destroy nakshatra" do
    assert_difference('Nakshatra.count', -1) do
      delete :destroy, id: @nakshatra
    end

    assert_redirected_to nakshatras_path
  end
end
