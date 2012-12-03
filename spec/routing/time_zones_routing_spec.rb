require "spec_helper"

describe TimeZonesController do
  describe "routing" do

    it "routes to #index" do
      get("/time_zones").should route_to("time_zones#index")
    end

    it "routes to #new" do
      get("/time_zones/new").should route_to("time_zones#new")
    end

    it "routes to #show" do
      get("/time_zones/1").should route_to("time_zones#show", :id => "1")
    end

    it "routes to #edit" do
      get("/time_zones/1/edit").should route_to("time_zones#edit", :id => "1")
    end

    it "routes to #create" do
      post("/time_zones").should route_to("time_zones#create")
    end

    it "routes to #update" do
      put("/time_zones/1").should route_to("time_zones#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/time_zones/1").should route_to("time_zones#destroy", :id => "1")
    end

  end
end
