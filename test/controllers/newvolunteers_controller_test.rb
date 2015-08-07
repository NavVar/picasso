require 'test_helper'

class NewvolunteersControllerTest < ActionController::TestCase
  setup do
    @newvolunteer = newvolunteers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:newvolunteers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create newvolunteer" do
    assert_difference('Newvolunteer.count') do
      post :create, newvolunteer: { address: @newvolunteer.address, area: @newvolunteer.area, birthdate: @newvolunteer.birthdate, cell: @newvolunteer.cell, ci: @newvolunteer.ci, city: @newvolunteer.city, free: @newvolunteer.free, lasname: @newvolunteer.lasname, mail: @newvolunteer.mail, name: @newvolunteer.name, ocupation: @newvolunteer.ocupation, phone: @newvolunteer.phone, reason: @newvolunteer.reason }
    end

    assert_redirected_to newvolunteer_path(assigns(:newvolunteer))
  end

  test "should show newvolunteer" do
    get :show, id: @newvolunteer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @newvolunteer
    assert_response :success
  end

  test "should update newvolunteer" do
    patch :update, id: @newvolunteer, newvolunteer: { address: @newvolunteer.address, area: @newvolunteer.area, birthdate: @newvolunteer.birthdate, cell: @newvolunteer.cell, ci: @newvolunteer.ci, city: @newvolunteer.city, free: @newvolunteer.free, lasname: @newvolunteer.lasname, mail: @newvolunteer.mail, name: @newvolunteer.name, ocupation: @newvolunteer.ocupation, phone: @newvolunteer.phone, reason: @newvolunteer.reason }
    assert_redirected_to newvolunteer_path(assigns(:newvolunteer))
  end

  test "should destroy newvolunteer" do
    assert_difference('Newvolunteer.count', -1) do
      delete :destroy, id: @newvolunteer
    end

    assert_redirected_to newvolunteers_path
  end
end
