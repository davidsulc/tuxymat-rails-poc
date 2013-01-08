class VendingMachine < ActiveRecord::Base
  attr_accessible :age_verification, :purchase_price, :serial_number
end
