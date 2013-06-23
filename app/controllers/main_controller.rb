class MainController < ApplicationController
  def display
  end

  def new
    create_incident
    create_incident_responder
    create_incident_assistance
    create_client
    render action:"display"
  end

  def create_incident
    name = params[:dispatcher]


    Incident.create(name: name, )


  end

  def create_incident_responder

    IncidentResponder.create(
                             date_left_scene: params[:date_left_scene], #needs to be added to form
                             date_on_scene: params[:date_on_scene, #needs adding
                             dispatched_date: params[:dispatched_date], #needs adding
                             dispatched_time: params[:dispatched_time], 
                             dispatcher_id: params[:dispatcher], 
                             incident_id:, #needs adding
                             initial_responder: params[:initial_responder], #needs adding
                             staff_id:, #needs adding
                             time_left_scene: params[:time_left_scene] #needs adding
                             time_on_scene: params[:time_on_scene] #needs adding
                             )

  end

  def create_incident_assistance

    IncidentAssistance.create(
                              addition_info: params[:additional_info],
                              case_number: params[:case_number], # name not in main page form
                              disaster_services_technology: params[:disaster_services_technology], # name not in main page form
                              family_id: params[:family_id], #not in form
                              health_services: params[:],
                              incident_id: params[:],
                              mass_care_service: params[:],
                              nbr_adult_receiving_assistance: params[:],
                              nbr_children_receiving_assistance: params[:],
                              partner_services: params[:],
                              unit_floor: params[:],
                              unserviced: params[:],
                              unserviced_reason: params[:]
                              )
  end

  def create_client

  end

end
