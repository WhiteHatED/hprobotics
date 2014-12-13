require 'test_helper'

class StaticControllerTest < ActionController::TestCase
  test "should get welcome" do
    get :welcome
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get calendar" do
    get :calendar
    assert_response :success
  end

  test "should get forums" do
    get :forums
    assert_response :success
  end

  test "should get donate" do
    get :donate
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

end
