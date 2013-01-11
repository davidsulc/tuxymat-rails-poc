class VendingMachine < ActiveRecord::Base
  attr_accessible :age_verification, :purchase_price, :serial_number
  
  validates :serial_number, presence: true, uniqueness: { message: "already exists" }
  validates :purchase_price,
      numericality: { greater_than: 0, less_than: 10000 },
      format: { :with => /\.\d{,2}$/, :message => "max 2 digits allowed after '.'" }
  
  # override method so that we can remove separators (i.e. 1'000 and 1,000 become 1000)
  # before rails casts the data into a BigDecimal
  def purchase_price=(price)
    price = price.to_s.gsub(/[,']/, '').to_f
    write_attribute(:purchase_price, price)
  end
end
