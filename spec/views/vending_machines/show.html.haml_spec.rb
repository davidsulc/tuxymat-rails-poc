require 'spec_helper'

describe "vending_machines/show" do
  before(:each) do
    @vending_machine = assign(:vending_machine, stub_model(VendingMachine,
      :serial_number => "Serial Number",
      :purchase_price => "9.99",
      :age_verification => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Serial Number/)
    rendered.should match(/9.99/)
    rendered.should match(/false/)
  end
end
