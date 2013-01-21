require 'spec_helper'

describe "contracts/index" do
  before(:each) do
    @partner = FactoryGirl.create(:partner)
    @vending_machine = FactoryGirl.create(:vending_machine)
    
    2.times do
      FactoryGirl.create(:contract, partner: @partner, vending_machine: @vending_machine)
    end

    assign(:contracts, Contract.all)
  end

  it "renders a list of contracts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => @partner.name, :count => 2
    assert_select "tr>td", :text => @vending_machine.serial_number, :count => 2
  end
end
