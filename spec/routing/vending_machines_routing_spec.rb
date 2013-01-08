require "spec_helper"

describe VendingMachinesController do
  describe "routing" do

    it "routes to #index" do
      get("/vending_machines").should route_to("vending_machines#index")
    end

    it "routes to #new" do
      get("/vending_machines/new").should route_to("vending_machines#new")
    end

    it "routes to #show" do
      get("/vending_machines/1").should route_to("vending_machines#show", :id => "1")
    end

    it "routes to #edit" do
      get("/vending_machines/1/edit").should route_to("vending_machines#edit", :id => "1")
    end

    it "routes to #create" do
      post("/vending_machines").should route_to("vending_machines#create")
    end

    it "routes to #update" do
      put("/vending_machines/1").should route_to("vending_machines#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/vending_machines/1").should route_to("vending_machines#destroy", :id => "1")
    end

  end
end
