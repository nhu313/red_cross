class IncidentResponder < ActiveRecord::Base
  attr_accessible :date_left_scene, :date_on_scene, :dispatched_date, :dispatched_time, :dispatcher_id, :incident_id, :initial_responder, :staff_id, :time_left_scene, :time_on_scene
  belongs_to :incident
end
