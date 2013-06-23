class CreateIncidentAssistances < ActiveRecord::Migration
  def change
    create_table :incident_assistances do |t|
      t.integer :incident_id
      t.integer :family_id
      t.string :unit_floor
      t.integer :case_number
      t.integer :nbr_adult_receiving_assistance
      t.integer :nbr_children_receiving_assistance
      t.text :mass_care_service
      t.text :health_services
      t.text :partner_services
      t.text :disaster_services_technology
      t.text :addition_info
      t.boolean :unserviced
      t.string :unserviced_reason

      t.timestamps
    end
  end
end
