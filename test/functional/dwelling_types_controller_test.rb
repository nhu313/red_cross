require 'test_helper'

class DwellingTypesControllerTest < ActionController::TestCase
  setup do
    @dwelling_type = dwelling_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dwelling_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dwelling_type" do
    assert_difference('DwellingType.count') do
      post :create, dwelling_type: { name: @dwelling_type.name, story: @dwelling_type.story }
    end

    assert_redirected_to dwelling_type_path(assigns(:dwelling_type))
  end

  test "should show dwelling_type" do
    get :show, id: @dwelling_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dwelling_type
    assert_response :success
  end

  test "should update dwelling_type" do
    put :update, id: @dwelling_type, dwelling_type: { name: @dwelling_type.name, story: @dwelling_type.story }
    assert_redirected_to dwelling_type_path(assigns(:dwelling_type))
  end

  test "should destroy dwelling_type" do
    assert_difference('DwellingType.count', -1) do
      delete :destroy, id: @dwelling_type
    end

    assert_redirected_to dwelling_types_path
  end
end
