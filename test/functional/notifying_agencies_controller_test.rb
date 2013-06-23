require 'test_helper'

class NotifyingAgenciesControllerTest < ActionController::TestCase
  setup do
    @notifying_agency = notifying_agencies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:notifying_agencies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create notifying_agency" do
    assert_difference('NotifyingAgency.count') do
      post :create, notifying_agency: { name: @notifying_agency.name }
    end

    assert_redirected_to notifying_agency_path(assigns(:notifying_agency))
  end

  test "should show notifying_agency" do
    get :show, id: @notifying_agency
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @notifying_agency
    assert_response :success
  end

  test "should update notifying_agency" do
    put :update, id: @notifying_agency, notifying_agency: { name: @notifying_agency.name }
    assert_redirected_to notifying_agency_path(assigns(:notifying_agency))
  end

  test "should destroy notifying_agency" do
    assert_difference('NotifyingAgency.count', -1) do
      delete :destroy, id: @notifying_agency
    end

    assert_redirected_to notifying_agencies_path
  end
end
