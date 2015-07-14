require 'test_helper'

class RegisteredsControllerTest < ActionController::TestCase
  setup do
    @registered = registereds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:registereds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create registered" do
    assert_difference('Registered.count') do
      post :create, registered: { email: @registered.email, name: @registered.name }
    end

    assert_redirected_to registered_path(assigns(:registered))
  end

  test "should show registered" do
    get :show, id: @registered
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @registered
    assert_response :success
  end

  test "should update registered" do
    patch :update, id: @registered, registered: { email: @registered.email, name: @registered.name }
    assert_redirected_to registered_path(assigns(:registered))
  end

  test "should destroy registered" do
    assert_difference('Registered.count', -1) do
      delete :destroy, id: @registered
    end

    assert_redirected_to registereds_path
  end
end
