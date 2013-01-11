module VendingMachinesHelper
  # format a price for display (e.g. 12345.5 => 12'345.50)
  def pretty_price_format(price)
    number_with_precision(price, precision: 2, delimiter: "'")
  end
end
