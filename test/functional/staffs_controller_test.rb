require 'test_helper'

class StaffsControllerTest < ActionController::TestCase
  setup do
    @staff = staffs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:staffs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create staff" do
    assert_difference('Staff.count') do
      post :create, staff: { address_line1: @staff.address_line1, address_line2: @staff.address_line2, address_line3: @staff.address_line3, case_worker: @staff.case_worker, city: @staff.city, country: @staff.country, county: @staff.county, dispatcher: @staff.dispatcher, first_name: @staff.first_name, home_phone: @staff.home_phone, last_name: @staff.last_name, latitude: @staff.latitude, longitude: @staff.longitude, mobile_phone: @staff.mobile_phone, postal_code: @staff.postal_code, responder: @staff.responder, salutation: @staff.salutation, state: @staff.state, suffix: @staff.suffix, work_phone: @staff.work_phone }
    end

    assert_redirected_to staff_path(assigns(:staff))
  end

  test "should show staff" do
    get :show, id: @staff
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @staff
    assert_response :success
  end

  test "should update staff" do
    put :update, id: @staff, staff: { address_line1: @staff.address_line1, address_line2: @staff.address_line2, address_line3: @staff.address_line3, case_worker: @staff.case_worker, city: @staff.city, country: @staff.country, county: @staff.county, dispatcher: @staff.dispatcher, first_name: @staff.first_name, home_phone: @staff.home_phone, last_name: @staff.last_name, latitude: @staff.latitude, longitude: @staff.longitude, mobile_phone: @staff.mobile_phone, postal_code: @staff.postal_code, responder: @staff.responder, salutation: @staff.salutation, state: @staff.state, suffix: @staff.suffix, work_phone: @staff.work_phone }
    assert_redirected_to staff_path(assigns(:staff))
  end

  test "should destroy staff" do
    assert_difference('Staff.count', -1) do
      delete :destroy, id: @staff
    end

    assert_redirected_to staffs_path
  end
end
