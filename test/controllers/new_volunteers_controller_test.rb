require 'test_helper'

class NewVolunteersControllerTest < ActionController::TestCase
  setup do
    @new_volunteer = new_volunteers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:new_volunteers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create new_volunteer" do
    assert_difference('NewVolunteer.count') do
      post :create, new_volunteer: { address: @new_volunteer.address, area: @new_volunteer.area, birthdate: @new_volunteer.birthdate, cell: @new_volunteer.cell, ci: @new_volunteer.ci, city: @new_volunteer.city, free: @new_volunteer.free, lasname: @new_volunteer.lasname, mail: @new_volunteer.mail, name: @new_volunteer.name, ocupation: @new_volunteer.ocupation, phone: @new_volunteer.phone, reason: @new_volunteer.reason }
    end

    assert_redirected_to new_volunteer_path(assigns(:new_volunteer))
  end

  test "should show new_volunteer" do
    get :show, id: @new_volunteer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @new_volunteer
    assert_response :success
  end

  test "should update new_volunteer" do
    patch :update, id: @new_volunteer, new_volunteer: { address: @new_volunteer.address, area: @new_volunteer.area, birthdate: @new_volunteer.birthdate, cell: @new_volunteer.cell, ci: @new_volunteer.ci, city: @new_volunteer.city, free: @new_volunteer.free, lasname: @new_volunteer.lasname, mail: @new_volunteer.mail, name: @new_volunteer.name, ocupation: @new_volunteer.ocupation, phone: @new_volunteer.phone, reason: @new_volunteer.reason }
    assert_redirected_to new_volunteer_path(assigns(:new_volunteer))
  end

  test "should destroy new_volunteer" do
    assert_difference('NewVolunteer.count', -1) do
      delete :destroy, id: @new_volunteer
    end

    assert_redirected_to new_volunteers_path
  end
end
