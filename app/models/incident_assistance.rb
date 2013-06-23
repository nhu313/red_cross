class IncidentAssistance < ActiveRecord::Base
  attr_accessible :addition_info, :case_number, :disaster_services_technology, :family_id, :health_services, :incident_id, :mass_care_service, :nbr_adult_receiving_assistance, :nbr_children_receiving_assistance, :partner_services, :unit_floor, :unserviced, :unserviced_reason
end
