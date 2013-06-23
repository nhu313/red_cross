require 'test_helper'

class ClientsControllerTest < ActionController::TestCase
  setup do
    @client = clients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create client" do
    assert_difference('Client.count') do
      post :create, client: { address_line1: @client.address_line1, address_line2: @client.address_line2, address_line3: @client.address_line3, city: @client.city, county: @client.county, date_deceased: @client.date_deceased, date_of_birth: @client.date_of_birth, economic_status_type_id: @client.economic_status_type_id, ethnicity_type_id: @client.ethnicity_type_id, family_id: @client.family_id, first_name: @client.first_name, gender_type_id: @client.gender_type_id, head_of_house_hold: @client.head_of_house_hold, home_phone: @client.home_phone, language_id: @client.language_id, last_name: @client.last_name, mobile_phone: @client.mobile_phone, postal_code: @client.postal_code, salutation: @client.salutation, state: @client.state, suffix: @client.suffix, work_phone: @client.work_phone }
    end

    assert_redirected_to client_path(assigns(:client))
  end

  test "should show client" do
    get :show, id: @client
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @client
    assert_response :success
  end

  test "should update client" do
    put :update, id: @client, client: { address_line1: @client.address_line1, address_line2: @client.address_line2, address_line3: @client.address_line3, city: @client.city, county: @client.county, date_deceased: @client.date_deceased, date_of_birth: @client.date_of_birth, economic_status_type_id: @client.economic_status_type_id, ethnicity_type_id: @client.ethnicity_type_id, family_id: @client.family_id, first_name: @client.first_name, gender_type_id: @client.gender_type_id, head_of_house_hold: @client.head_of_house_hold, home_phone: @client.home_phone, language_id: @client.language_id, last_name: @client.last_name, mobile_phone: @client.mobile_phone, postal_code: @client.postal_code, salutation: @client.salutation, state: @client.state, suffix: @client.suffix, work_phone: @client.work_phone }
    assert_redirected_to client_path(assigns(:client))
  end

  test "should destroy client" do
    assert_difference('Client.count', -1) do
      delete :destroy, id: @client
    end

    assert_redirected_to clients_path
  end
end
