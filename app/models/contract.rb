class Contract < ActiveRecord::Base
  attr_accessible :end_date, :partner_id, :start_date, :vending_machine_id
end
