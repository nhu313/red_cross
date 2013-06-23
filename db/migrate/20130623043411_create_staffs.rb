class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :salutation
      t.string :first_name
      t.string :last_name
      t.string :suffix
      t.string :address_line1
      t.string :address_line2
      t.string :address_line3
      t.string :city
      t.string :state
      t.string :county
      t.string :country
      t.string :postal_code
      t.boolean :responder
      t.boolean :dispatcher
      t.boolean :case_worker
      t.string :home_phone
      t.string :work_phone
      t.string :mobile_phone
      t.string :latitude
      t.string :longitude

      t.timestamps
    end
  end
end
