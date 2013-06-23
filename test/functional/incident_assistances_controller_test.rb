require 'test_helper'

class IncidentAssistancesControllerTest < ActionController::TestCase
  setup do
    @incident_assistance = incident_assistances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:incident_assistances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create incident_assistance" do
    assert_difference('IncidentAssistance.count') do
      post :create, incident_assistance: { addition_info: @incident_assistance.addition_info, case_number: @incident_assistance.case_number, disaster_services_technology: @incident_assistance.disaster_services_technology, family_id: @incident_assistance.family_id, health_services: @incident_assistance.health_services, incident_id: @incident_assistance.incident_id, mass_care_service: @incident_assistance.mass_care_service, nbr_adult_receiving_assistance: @incident_assistance.nbr_adult_receiving_assistance, nbr_children_receiving_assistance: @incident_assistance.nbr_children_receiving_assistance, partner_services: @incident_assistance.partner_services, unit_floor: @incident_assistance.unit_floor, unserviced: @incident_assistance.unserviced, unserviced_reason: @incident_assistance.unserviced_reason }
    end

    assert_redirected_to incident_assistance_path(assigns(:incident_assistance))
  end

  test "should show incident_assistance" do
    get :show, id: @incident_assistance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @incident_assistance
    assert_response :success
  end

  test "should update incident_assistance" do
    put :update, id: @incident_assistance, incident_assistance: { addition_info: @incident_assistance.addition_info, case_number: @incident_assistance.case_number, disaster_services_technology: @incident_assistance.disaster_services_technology, family_id: @incident_assistance.family_id, health_services: @incident_assistance.health_services, incident_id: @incident_assistance.incident_id, mass_care_service: @incident_assistance.mass_care_service, nbr_adult_receiving_assistance: @incident_assistance.nbr_adult_receiving_assistance, nbr_children_receiving_assistance: @incident_assistance.nbr_children_receiving_assistance, partner_services: @incident_assistance.partner_services, unit_floor: @incident_assistance.unit_floor, unserviced: @incident_assistance.unserviced, unserviced_reason: @incident_assistance.unserviced_reason }
    assert_redirected_to incident_assistance_path(assigns(:incident_assistance))
  end

  test "should destroy incident_assistance" do
    assert_difference('IncidentAssistance.count', -1) do
      delete :destroy, id: @incident_assistance
    end

    assert_redirected_to incident_assistances_path
  end
end
