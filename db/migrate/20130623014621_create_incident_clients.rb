class CreateIncidentClients < ActiveRecord::Migration
  def change
    create_table :incident_clients do |t|
      t.integer :incident_id
      t.integer :family_id
      t.integer :nine01_case_id

      t.timestamps
    end
  end
end
