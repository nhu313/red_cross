require 'test_helper'

class EconomicStatusesControllerTest < ActionController::TestCase
  setup do
    @economic_status = economic_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:economic_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create economic_status" do
    assert_difference('EconomicStatus.count') do
      post :create, economic_status: { type_name: @economic_status.type_name }
    end

    assert_redirected_to economic_status_path(assigns(:economic_status))
  end

  test "should show economic_status" do
    get :show, id: @economic_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @economic_status
    assert_response :success
  end

  test "should update economic_status" do
    put :update, id: @economic_status, economic_status: { type_name: @economic_status.type_name }
    assert_redirected_to economic_status_path(assigns(:economic_status))
  end

  test "should destroy economic_status" do
    assert_difference('EconomicStatus.count', -1) do
      delete :destroy, id: @economic_status
    end

    assert_redirected_to economic_statuses_path
  end
end
