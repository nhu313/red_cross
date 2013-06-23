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
    dispatcher = params[:dispatcher]
    dispatched_date = params[:dispatched_date]
    dispatched_time = params[:dispatched_time]
    date_on_scene = params[:date_on_scene]
    time_on_scene = params[:time_on_scene]
    date_left_scene = params[:date_left_scene]
    time_left_scene = params[:time_left_scene]
    initial_responder = params[:initial_responder]
    ###incident_id
    ###staff_id

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

  end

end
