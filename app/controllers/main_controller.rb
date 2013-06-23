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
    Incident.create(
      notification_date: params[:notification_date]
      notification_time: params[:notification_time]
      notification_agency_id: params[:notification_agency_id]
      dispatcher_id: params[:dispatcher_id]
      address_line1: params[:address_line1]
      city: params[:city]
      state: params[:state]
      county: params[:county]
      postal_code: params[:postal_code]
      rc_chapter: params[:rc_chapter]
      verification_date: params[:verification_date]
      verification_time: params[:verification_time]
      verification_agency: params[:verification_agency]
      memo_verification_info: params[:memo_verification_info]
      incident_date: params[:incident_date]
      incident_time: params[:incident_time]
      nbr_affected_families: params[:nbr_affected_families]
      nbr_affected_individuals: params[:nbr_affected_individuals]
      events_sequence: params[:events_sequence]
      dwelling_id: params[:dwelling_id]
      damange_assessment: params[:damange_assessment]
      injuries_or_death: params[:injuries_or_death]
      national_incident_id: params[:national_incident_id]
      trainee_follow_up: params[:trainee_follow_up]
      date_follow_up: params[:date_follow_up]
      trainee_name: params[:trainee_name]
      person_following_up: params[:person_following_up]
      follow_up_result: params[:follow_up_result]
      created_at: params[:created_at]               
      updated_at: params[:updated_at] 
      )              


  end

  def create_incident_responder

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
