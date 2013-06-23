class CreateIncidentResponders < ActiveRecord::Migration
  def change
    create_table :incident_responders do |t|
      t.integer :incident_id
      t.integer :staff_id
      t.integer :dispatcher_id
      t.date :dispatched_date
      t.time :dispatched_time
      t.date :date_on_scene
      t.time :time_on_scene
      t.date :date_left_scene
      t.time :time_left_scene
      t.boolean :initial_responder

      t.timestamps
    end
  end
end
