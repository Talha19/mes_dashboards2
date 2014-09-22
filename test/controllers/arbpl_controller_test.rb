require 'test_helper'

class ArbplControllerTest < ActionController::TestCase
  test "should get view" do
    get :view
    assert_response :success
  end

  test "should get _form" do
    get :_form
    assert_response :success
  end

  test "should get _arbpl" do
    get :_arbpl
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

end
