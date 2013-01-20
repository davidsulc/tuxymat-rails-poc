require "spec_helper"

describe ContractsController do
  describe "routing" do

    it "routes to #index" do
      get("/contracts").should route_to("contracts#index", :locale => nil)
    end

    it "routes to #new" do
      get("/contracts/new").should route_to("contracts#new", :locale => nil)
    end

    it "routes to #show" do
      get("/contracts/1").should route_to("contracts#show", :id => "1", :locale => nil)
    end

    it "routes to #edit" do
      get("/contracts/1/edit").should route_to("contracts#edit", :id => "1", :locale => nil)
    end

    it "routes to #create" do
      post("/contracts").should route_to("contracts#create", :locale => nil)
    end

    it "routes to #update" do
      put("/contracts/1").should route_to("contracts#update", :id => "1", :locale => nil)
    end

    it "routes to #destroy" do
      delete("/contracts/1").should route_to("contracts#destroy", :id => "1", :locale => nil)
    end

  end
end
