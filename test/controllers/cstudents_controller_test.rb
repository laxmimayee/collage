require 'test_helper'

class CstudentsControllerTest < ActionController::TestCase
  test "should get newstudent" do
    get :newstudent
    assert_response :success
  end

  test "should get liststudent" do
    get :liststudent
    assert_response :success
  end

  test "should get studentlogin" do
    get :studentlogin
    assert_response :success
  end

end
