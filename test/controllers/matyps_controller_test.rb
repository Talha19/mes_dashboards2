require 'test_helper'

class MatypsControllerTest < ActionController::TestCase
  test "should get view" do
    get :view
    assert_response :success
  end

  test "should get _form" do
    get :_form
    assert_response :success
  end

  test "should get _matyp" do
    get :_matyp
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

end
