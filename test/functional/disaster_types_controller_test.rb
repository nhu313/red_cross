require 'test_helper'

class DisasterTypesControllerTest < ActionController::TestCase
  setup do
    @disaster_type = disaster_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:disaster_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create disaster_type" do
    assert_difference('DisasterType.count') do
      post :create, disaster_type: { name: @disaster_type.name }
    end

    assert_redirected_to disaster_type_path(assigns(:disaster_type))
  end

  test "should show disaster_type" do
    get :show, id: @disaster_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @disaster_type
    assert_response :success
  end

  test "should update disaster_type" do
    put :update, id: @disaster_type, disaster_type: { name: @disaster_type.name }
    assert_redirected_to disaster_type_path(assigns(:disaster_type))
  end

  test "should destroy disaster_type" do
    assert_difference('DisasterType.count', -1) do
      delete :destroy, id: @disaster_type
    end

    assert_redirected_to disaster_types_path
  end
end
