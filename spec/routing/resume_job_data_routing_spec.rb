require "spec_helper"

describe ResumeJobDataController do
  describe "routing" do

    it "routes to #index" do
      get("/resume_job_data").should route_to("resume_job_data#index")
    end

    it "routes to #new" do
      get("/resume_job_data/new").should route_to("resume_job_data#new")
    end

    it "routes to #show" do
      get("/resume_job_data/1").should route_to("resume_job_data#show", :id => "1")
    end

    it "routes to #edit" do
      get("/resume_job_data/1/edit").should route_to("resume_job_data#edit", :id => "1")
    end

    it "routes to #create" do
      post("/resume_job_data").should route_to("resume_job_data#create")
    end

    it "routes to #update" do
      put("/resume_job_data/1").should route_to("resume_job_data#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/resume_job_data/1").should route_to("resume_job_data#destroy", :id => "1")
    end

  end
end
