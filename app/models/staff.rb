class Staff < ActiveRecord::Base
  attr_accessible :address_line1, :address_line2, :address_line3, :case_worker, :city, :country, :county, :dispatcher, :first_name, :home_phone, :last_name, :latitude, :longitude, :mobile_phone, :postal_code, :responder, :salutation, :state, :suffix, :work_phone
end
