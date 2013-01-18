require 'spec_helper'

describe VendingMachine do
  
  it "should have a valid factory" do
    FactoryGirl.build(:vending_machine).should be_valid
  end

  it "should require a serial number" do
    FactoryGirl.build(:vending_machine, :serial_number => "").should_not be_valid
  end

  it "should require the serial number to be unique" do
    FactoryGirl.create(:vending_machine, :serial_number => "test")
    FactoryGirl.build(:vending_machine, :serial_number => "test").should_not be_valid
  end
  
  it "should allow the purchase price to be blank" do
    FactoryGirl.build(:vending_machine, :purchase_price => "").should be_valid
  end
  
  it "should require the purchase price to be > 0" do
    FactoryGirl.build(:vending_machine, :purchase_price => 0).should_not be_valid
    FactoryGirl.build(:vending_machine, :purchase_price => -1).should_not be_valid
  end
  
  it "should require the purchase price to be < 10000" do
    FactoryGirl.build(:vending_machine, :purchase_price => 10000).should_not be_valid
    FactoryGirl.build(:vending_machine, :purchase_price => 10001).should_not be_valid
  end
  
  it "should not allow more than 2 digits after '.'" do
    FactoryGirl.build(:vending_machine, :purchase_price => "100.").should be_valid
    FactoryGirl.build(:vending_machine, :purchase_price => 100.0).should be_valid
    FactoryGirl.build(:vending_machine, :purchase_price => 100.01).should be_valid
    
    FactoryGirl.build(:vending_machine, :purchase_price => 100.011).should_not be_valid
  end
  
  it "should accept purchase prices with ',' and \"'\"" do
    vending_machine = VendingMachine.new
    vending_machine.purchase_price = "9,000"
    vending_machine.purchase_price.should == 9000
    vending_machine.purchase_price = "9,000,000"
    vending_machine.purchase_price.should == 9000000
    
    vending_machine.purchase_price = "9'000"
    vending_machine.purchase_price.should == 9000
    vending_machine.purchase_price = "9'000'000"
    vending_machine.purchase_price.should == 9000000
  end
  
end
