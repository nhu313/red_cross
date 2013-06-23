class Client < ActiveRecord::Base
  attr_accessible :address_line1, :address_line2, :address_line3, :city, :county, :date_deceased, :date_of_birth, :economic_status_type_id, :ethnicity_type_id, :family_id, :first_name, :gender_type_id, :head_of_house_hold, :home_phone, :language_id, :last_name, :mobile_phone, :postal_code, :salutation, :state, :suffix, :work_phone
end
