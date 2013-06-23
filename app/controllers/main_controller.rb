class MainController < ApplicationController
  def display
  end

  def new
    incident = create_incident
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
                             incident_id: params[:in], #needs adding
                             initial_responder: params[:initial_responder], #needs adding
                             staff_id: params[:staff_id], #needs adding
                             time_left_scene: params[:time_left_scene], #needs adding
                             time_on_scene: params[:time_on_scene] #needs adding
                             )

  end

  def create_incident_assistance

    IncidentAssistance.create(
                              addition_info: params[:additional_info],
                              case_number: params[:case_number], # name not in main page form
                              disaster_services_technology: params[:disaster_services_technology], # name not in main page form
                              family_id: params[:family_id], #not in form
                              health_services: params[:health_services], #in form as 'services', needs to be broken out
                              incident_id: params[:incident_id], #not on form
                              mass_care_service: params[:mass_care_service], #on form as "services", needs to broken out.
                              nbr_adult_receiving_assistance: params[:adults_serviced],
                              nbr_children_receiving_assistance: params[:children_service],
                              partner_services: params[:partner_services], #on form as "services", needs to be broken out
                              unit_floor: params[:unit_floor], #not in form
                              unserviced: params[:unserviced], #not in form
                              unserviced_reason: params[:unserviced] #not in form
                              )
  end

  def create_client
    Client.create(
      salutation: params[:salutation]
      first_name: params[:first_name]
      last_name: params[:last_name]
      suffix: params[:suffix]
      address_line_one: params[:address_line_one]
      address_line_two: params[:address_line_two]
      address_line_three: params[:address_line_three]
      state: params[:state]
      county: params[:county]
      postal_code: params[:postal_code]
      home_phone: params[:home_phone]
      work_phone: params[:work_phone]
      mobile_phone: params[:mobile_phone]
      date_of_birth: params[:date_of_birth]
      date_deceased: params[:date_deceased]
      head_of_house_hold: params[:head_of_house_hold]
      ethnicity_type_id: params[:ethnicity_type_id]
      language_id: params[:language_id]
      gender_type_id: params[:gender_type_id]
      economic_status_type_id: params[:economic_status_type_id]
      created_at: params[:created_at]
      updated_at: params [:updated_at]
      )

  end

end
