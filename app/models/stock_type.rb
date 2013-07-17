class StockType < ActiveRecord::Base
  attr_accessible :name
  serialize :name, JSON
end
