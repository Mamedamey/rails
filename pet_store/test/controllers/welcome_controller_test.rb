require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "should get chicken" do
    get :chicken
    assert_response :success
  end

  test "should get waffles" do
    get :waffles
    assert_response :success
  end

end
