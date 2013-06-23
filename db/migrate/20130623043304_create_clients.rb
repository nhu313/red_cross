class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.integer :family_id
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
      t.string :postal_code
      t.string :home_phone
      t.string :work_phone
      t.string :mobile_phone
      t.date :date_of_birth
      t.date :date_deceased
      t.boolean :head_of_house_hold
      t.integer :ethnicity_type_id
      t.integer :language_id
      t.integer :gender_type_id
      t.integer :economic_status_type_id

      t.timestamps
    end
  end
end
