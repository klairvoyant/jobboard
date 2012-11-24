require "spec_helper"

describe JobDetailsController do
  describe "routing" do

    it "routes to #index" do
      get("/job_details").should route_to("job_details#index")
    end

    it "routes to #new" do
      get("/job_details/new").should route_to("job_details#new")
    end

    it "routes to #show" do
      get("/job_details/1").should route_to("job_details#show", :id => "1")
    end

    it "routes to #edit" do
      get("/job_details/1/edit").should route_to("job_details#edit", :id => "1")
    end

    it "routes to #create" do
      post("/job_details").should route_to("job_details#create")
    end

    it "routes to #update" do
      put("/job_details/1").should route_to("job_details#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/job_details/1").should route_to("job_details#destroy", :id => "1")
    end

  end
end
