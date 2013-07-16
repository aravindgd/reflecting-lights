require 'test_helper'

class JqueryTestsControllerTest < ActionController::TestCase
  setup do
    @jquery_test = jquery_tests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jquery_tests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jquery_test" do
    assert_difference('JqueryTest.count') do
      post :create, jquery_test: {  }
    end

    assert_redirected_to jquery_test_path(assigns(:jquery_test))
  end

  test "should show jquery_test" do
    get :show, id: @jquery_test
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jquery_test
    assert_response :success
  end

  test "should update jquery_test" do
    patch :update, id: @jquery_test, jquery_test: {  }
    assert_redirected_to jquery_test_path(assigns(:jquery_test))
  end

  test "should destroy jquery_test" do
    assert_difference('JqueryTest.count', -1) do
      delete :destroy, id: @jquery_test
    end

    assert_redirected_to jquery_tests_path
  end
end
