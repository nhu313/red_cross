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

    IncidentResponder.create(date_left_scene: params[:date_left_scene], #needs to be added to form
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
