require 'test_helper'

class IncidentRespondersControllerTest < ActionController::TestCase
  setup do
    @incident_responder = incident_responders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:incident_responders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create incident_responder" do
    assert_difference('IncidentResponder.count') do
      post :create, incident_responder: { date_left_scene: @incident_responder.date_left_scene, date_on_scene: @incident_responder.date_on_scene, dispatched_date: @incident_responder.dispatched_date, dispatched_time: @incident_responder.dispatched_time, dispatcher_id: @incident_responder.dispatcher_id, incident_id: @incident_responder.incident_id, initial_responder: @incident_responder.initial_responder, staff_id: @incident_responder.staff_id, time_left_scene: @incident_responder.time_left_scene, time_on_scene: @incident_responder.time_on_scene }
    end

    assert_redirected_to incident_responder_path(assigns(:incident_responder))
  end

  test "should show incident_responder" do
    get :show, id: @incident_responder
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @incident_responder
    assert_response :success
  end

  test "should update incident_responder" do
    put :update, id: @incident_responder, incident_responder: { date_left_scene: @incident_responder.date_left_scene, date_on_scene: @incident_responder.date_on_scene, dispatched_date: @incident_responder.dispatched_date, dispatched_time: @incident_responder.dispatched_time, dispatcher_id: @incident_responder.dispatcher_id, incident_id: @incident_responder.incident_id, initial_responder: @incident_responder.initial_responder, staff_id: @incident_responder.staff_id, time_left_scene: @incident_responder.time_left_scene, time_on_scene: @incident_responder.time_on_scene }
    assert_redirected_to incident_responder_path(assigns(:incident_responder))
  end

  test "should destroy incident_responder" do
    assert_difference('IncidentResponder.count', -1) do
      delete :destroy, id: @incident_responder
    end

    assert_redirected_to incident_responders_path
  end
end
