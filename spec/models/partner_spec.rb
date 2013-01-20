require 'spec_helper'

describe Partner do
  
  it "should have a valid factory" do
    FactoryGirl.build(:partner).should be_valid
  end

  it "should require a name number" do
    FactoryGirl.build(:partner, :name => "").should_not be_valid
  end

  it "should require the name to be unique" do
    FactoryGirl.create(:partner, :name => "John Doe")
    FactoryGirl.build(:partner, :name => "John Doe").should_not be_valid
  end
  
end
