require 'spec_helper'

describe "vending_machines/edit" do
  before(:each) do
    @vending_machine = assign(:vending_machine, stub_model(VendingMachine,
      :serial_number => "MyString",
      :purchase_price => "9.99",
      :age_verification => false
    ))
  end

  it "renders the edit vending_machine form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => vending_machines_path(@vending_machine), :method => "post" do
      assert_select "input#vending_machine_serial_number", :name => "vending_machine[serial_number]"
      assert_select "input#vending_machine_purchase_price", :name => "vending_machine[purchase_price]"
      assert_select "input#vending_machine_age_verification", :name => "vending_machine[age_verification]"
    end
  end
end
