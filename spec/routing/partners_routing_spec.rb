require "spec_helper"

describe PartnersController do
  describe "routing" do

    it "routes to #index" do
      get("/partners").should route_to("partners#index", :locale => nil)
    end

    it "routes to #new" do
      get("/partners/new").should route_to("partners#new", :locale => nil)
    end

    it "routes to #edit" do
      get("/partners/1/edit").should route_to("partners#edit", :id => "1", :locale => nil)
    end

    it "routes to #create" do
      post("/partners").should route_to("partners#create", :locale => nil)
    end

    it "routes to #update" do
      put("/partners/1").should route_to("partners#update", :id => "1", :locale => nil)
    end

    it "routes to #destroy" do
      delete("/partners/1").should route_to("partners#destroy", :id => "1", :locale => nil)
    end

  end
end
