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
    #dispatched_date = params[:dispatched_date]
    dispatched_time = params[:dispatched_time]
    #date_on_scene = params[:date_on_scene]
    #time_on_scene = params[:time_on_scene]
    #date_left_scene = params[:date_left_scene]
    #time_left_scene = params[:time_left_scene]
    #initial_responder = params[:initial_responder]
    ###incident_id
    ###staff_id

    IncidentResponder.create(#date_left_scene: date_left_scene, 
                             #date_on_scene: date_on_scene, 
                             #dispatched_date: dispatched_date, 
                             dispatched_time: dispatched_time, 
                             dispatcher_id: dispatcher, 
                             #incident_id:, 
                             #initial_responder: initial_responder, 
                             #staff_id:, 
                             #time_left_scene: time_left_scene,
                             #time_on_scene: time_on_scene)

  end

  def create_incident_assistance

  end

  def create_client

  end

end
