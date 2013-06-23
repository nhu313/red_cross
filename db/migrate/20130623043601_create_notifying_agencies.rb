class CreateNotifyingAgencies < ActiveRecord::Migration
  def change
    create_table :notifying_agencies do |t|
      t.string :name

      t.timestamps
    end
  end
end
