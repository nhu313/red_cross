require 'test_helper'

class IncidentStockTypesControllerTest < ActionController::TestCase
  setup do
    @incident_stock_type = incident_stock_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:incident_stock_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create incident_stock_type" do
    assert_difference('IncidentStockType.count') do
      post :create, incident_stock_type: { family_id: @incident_stock_type.family_id, incident_id: @incident_stock_type.incident_id, stock_amount: @incident_stock_type.stock_amount, stock_type_id: @incident_stock_type.stock_type_id }
    end

    assert_redirected_to incident_stock_type_path(assigns(:incident_stock_type))
  end

  test "should show incident_stock_type" do
    get :show, id: @incident_stock_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @incident_stock_type
    assert_response :success
  end

  test "should update incident_stock_type" do
    put :update, id: @incident_stock_type, incident_stock_type: { family_id: @incident_stock_type.family_id, incident_id: @incident_stock_type.incident_id, stock_amount: @incident_stock_type.stock_amount, stock_type_id: @incident_stock_type.stock_type_id }
    assert_redirected_to incident_stock_type_path(assigns(:incident_stock_type))
  end

  test "should destroy incident_stock_type" do
    assert_difference('IncidentStockType.count', -1) do
      delete :destroy, id: @incident_stock_type
    end

    assert_redirected_to incident_stock_types_path
  end
end
