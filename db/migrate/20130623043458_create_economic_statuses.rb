class CreateEconomicStatuses < ActiveRecord::Migration
  def change
    create_table :economic_statuses do |t|
      t.string :type_name

      t.timestamps
    end
  end
end
