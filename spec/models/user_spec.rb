require 'spec_helper'

describe User do
  
  it "should have a valid factory" do
    FactoryGirl.build(:user).should be_valid
  end

  it "should require an email" do
    FactoryGirl.build(:user, :email => "").should_not be_valid
  end

  it "should require a password" do
    FactoryGirl.build(:user, :password => "").should_not be_valid
  end
  
end
