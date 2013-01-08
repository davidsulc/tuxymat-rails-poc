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
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Serial Number".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
