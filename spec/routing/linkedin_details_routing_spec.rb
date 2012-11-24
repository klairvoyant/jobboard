require "spec_helper"

describe LinkedinDetailsController do
  describe "routing" do

    it "routes to #index" do
      get("/linkedin_details").should route_to("linkedin_details#index")
    end

    it "routes to #new" do
      get("/linkedin_details/new").should route_to("linkedin_details#new")
    end

    it "routes to #show" do
      get("/linkedin_details/1").should route_to("linkedin_details#show", :id => "1")
    end

    it "routes to #edit" do
      get("/linkedin_details/1/edit").should route_to("linkedin_details#edit", :id => "1")
    end

    it "routes to #create" do
      post("/linkedin_details").should route_to("linkedin_details#create")
    end

    it "routes to #update" do
      put("/linkedin_details/1").should route_to("linkedin_details#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/linkedin_details/1").should route_to("linkedin_details#destroy", :id => "1")
    end

  end
end
