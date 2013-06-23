require 'test_helper'

class IncidentsControllerTest < ActionController::TestCase
  setup do
    @incident = incidents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:incidents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create incident" do
    assert_difference('Incident.count') do
      post :create, incident: { address_line1: @incident.address_line1, city: @incident.city, county: @incident.county, damange_assessment: @incident.damange_assessment, date_follow_up: @incident.date_follow_up, dispatcher_id: @incident.dispatcher_id, dwelling_id: @incident.dwelling_id, events_sequence: @incident.events_sequence, follow_up_result: @incident.follow_up_result, incident_date: @incident.incident_date, incident_time: @incident.incident_time, injuries_or_death: @incident.injuries_or_death, memo_verification_info: @incident.memo_verification_info, national_incident_id: @incident.national_incident_id, nbr_affected_families: @incident.nbr_affected_families, nbr_affected_individuals: @incident.nbr_affected_individuals, notification_agency_id: @incident.notification_agency_id, notification_date: @incident.notification_date, notification_time: @incident.notification_time, person_following_up: @incident.person_following_up, postal_code: @incident.postal_code, rc_chapter: @incident.rc_chapter, state: @incident.state, trainee_follow_up: @incident.trainee_follow_up, trainee_name: @incident.trainee_name, verification_agency: @incident.verification_agency, verification_date: @incident.verification_date, verification_time: @incident.verification_time }
    end

    assert_redirected_to incident_path(assigns(:incident))
  end

  test "should show incident" do
    get :show, id: @incident
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @incident
    assert_response :success
  end

  test "should update incident" do
    put :update, id: @incident, incident: { address_line1: @incident.address_line1, city: @incident.city, county: @incident.county, damange_assessment: @incident.damange_assessment, date_follow_up: @incident.date_follow_up, dispatcher_id: @incident.dispatcher_id, dwelling_id: @incident.dwelling_id, events_sequence: @incident.events_sequence, follow_up_result: @incident.follow_up_result, incident_date: @incident.incident_date, incident_time: @incident.incident_time, injuries_or_death: @incident.injuries_or_death, memo_verification_info: @incident.memo_verification_info, national_incident_id: @incident.national_incident_id, nbr_affected_families: @incident.nbr_affected_families, nbr_affected_individuals: @incident.nbr_affected_individuals, notification_agency_id: @incident.notification_agency_id, notification_date: @incident.notification_date, notification_time: @incident.notification_time, person_following_up: @incident.person_following_up, postal_code: @incident.postal_code, rc_chapter: @incident.rc_chapter, state: @incident.state, trainee_follow_up: @incident.trainee_follow_up, trainee_name: @incident.trainee_name, verification_agency: @incident.verification_agency, verification_date: @incident.verification_date, verification_time: @incident.verification_time }
    assert_redirected_to incident_path(assigns(:incident))
  end

  test "should destroy incident" do
    assert_difference('Incident.count', -1) do
      delete :destroy, id: @incident
    end

    assert_redirected_to incidents_path
  end
end
