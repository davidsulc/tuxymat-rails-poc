require 'spec_helper'

describe Contract do
  
  it "should have a valid factory" do
    FactoryGirl.build(:contract).should be_valid
  end

  it "should require a start date" do
    FactoryGirl.build(:contract, start_date: "").should_not be_valid
  end

  it "should ensure the end date is after the start date" do
    FactoryGirl.build(:contract, start_date: "2012-1-1", end_date: "2011-1-1").should_not be_valid
    FactoryGirl.build(:contract, start_date: "2012-1-1", end_date: "2012-1-1").should_not be_valid
    FactoryGirl.build(:contract, start_date: "2012-1-1", end_date: "2013-1-1").should be_valid
  end

  it "should require a valid vending machine id" do
    FactoryGirl.build(:contract, vending_machine_id: "").should_not be_valid
    FactoryGirl.build(:contract, vending_machine_id: "1").should_not be_valid
    
    vending_machine = FactoryGirl.create(:vending_machine)
    FactoryGirl.build(:contract, vending_machine_id: vending_machine.id).should be_valid
  end

  it "should require a valid partner id" do
    FactoryGirl.build(:contract, partner_id: "").should_not be_valid
    FactoryGirl.build(:contract, partner_id: "1").should_not be_valid
    
    partner = FactoryGirl.create(:partner)
    FactoryGirl.build(:contract, partner_id: partner.id).should be_valid
  end
  
end
