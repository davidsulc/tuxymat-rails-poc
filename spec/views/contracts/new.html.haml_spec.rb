require 'spec_helper'

describe "contracts/new" do
  before(:each) do
    @contract = FactoryGirl.create(:contract)
  end

  it "renders new contract form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => contracts_path, :method => "post" do
      assert_select "select#contract_vending_machine_id", :name => "contract[vending_machine_id]"
      assert_select "select#contract_partner_id", :name => "contract[partner_id]"
    end
  end
end
