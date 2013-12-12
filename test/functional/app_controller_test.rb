require 'test_helper'

class AppControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get connect" do
    get :connect
    assert_response :success
  end

  test "should get settings" do
    get :settings
    assert_response :success
  end

end
