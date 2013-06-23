class CreateIncidentDisasters < ActiveRecord::Migration
  def change
    create_table :incident_disasters do |t|
      t.integer :incident_id
      t.integer :disaster_type_id

      t.timestamps
    end
  end
end
