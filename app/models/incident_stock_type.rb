class IncidentStockType < ActiveRecord::Base
  attr_accessible :family_id, :incident_id, :stock_amount, :stock_type_id
end
