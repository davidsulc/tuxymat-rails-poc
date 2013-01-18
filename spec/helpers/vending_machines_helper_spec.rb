require 'spec_helper'

describe VendingMachinesHelper do
  describe "pretty_price_format" do
    it "formats a price for display" do
      helper.pretty_price_format("12345.5").should == "12'345.50"
    end
  end
end
