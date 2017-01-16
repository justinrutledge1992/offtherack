require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get gallery" do
    get :gallery
    assert_response :success
  end

  test "should get consignment" do
    get :consignment
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

end
