class VendingMachine < ActiveRecord::Base
  attr_accessible :age_verification, :purchase_price, :serial_number
  
  has_many :contracts
  
  validates :serial_number, presence: true, uniqueness: true
  validates :purchase_price,
      numericality: { :unless => "purchase_price.blank?", greater_than: 0, less_than: 10000 },
      format: { :unless => "purchase_price.blank?", :with => /\.\d{,2}$/ }
  
  # override method so that we can remove separators (i.e. 1'000 and 1,000 become 1000)
  # before rails casts the data into a BigDecimal
  def purchase_price=(price)
    return price if price.blank?
    price = price.to_s.gsub(/[,']/, '').to_f
    write_attribute(:purchase_price, price)
  end
end
