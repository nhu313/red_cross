class CreateIncidentStockTypes < ActiveRecord::Migration
  def change
    create_table :incident_stock_types do |t|
      t.integer :incident_id
      t.integer :family_id
      t.integer :stock_type_id
      t.integer :stock_amount

      t.timestamps
    end
  end
end
