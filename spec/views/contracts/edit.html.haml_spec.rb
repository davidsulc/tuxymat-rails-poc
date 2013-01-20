require 'spec_helper'

describe "contracts/edit" do
  before(:each) do
    @contract = FactoryGirl.create(:contract)
  end

  it "renders the edit contract form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => contracts_path(@contract), :method => "post" do
      assert_select "select#contract_vending_machine_id", :name => "contract[vending_machine_id]"
      assert_select "select#contract_partner_id", :name => "contract[partner_id]"
    end
  end
end
