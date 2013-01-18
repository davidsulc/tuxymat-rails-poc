require 'spec_helper'

describe "vending_machines/index" do
  before(:each) do
    assign(:vending_machines, [
      stub_model(VendingMachine,
        :serial_number => "Serial Number",
        :purchase_price => "9.99",
        :age_verification => false
      ),
      stub_model(VendingMachine,
        :serial_number => "Serial Number",
        :purchase_price => "9.99",
        :age_verification => false
      )
    ])
  end

  it "renders a list of vending_machines" do
    render
    assert_select "tr>td", :text => "Serial Number".to_s, :count => 2
  end
end
