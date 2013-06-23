class IncidentClient < ActiveRecord::Base
  attr_accessible :family_id, :incident_id, :nine01_case_id
  belongs_to :incident
end
