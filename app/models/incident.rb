class Incident < ActiveRecord::Base
  attr_accessible :address_line1, :city, :county, :damange_assessment, :date_follow_up, :dispatcher_id, :dwelling_id, :events_sequence, :follow_up_result, :incident_date, :incident_time, :injuries_or_death, :memo_verification_info, :national_incident_id, :nbr_affected_families, :nbr_affected_individuals, :notification_agency_id, :notification_date, :notification_time, :person_following_up, :postal_code, :rc_chapter, :state, :trainee_follow_up, :trainee_name, :verification_agency, :verification_date, :verification_time
  has_many :family, :incident_responder, :incident_client, :incident_disaster, :incident_assistance, :staff, :incident_stock_type
end
