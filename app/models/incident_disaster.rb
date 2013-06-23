class IncidentDisaster < ActiveRecord::Base
  attr_accessible :disaster_type_id, :incident_id
  belongs_to :incident
end
