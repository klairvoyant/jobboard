require "spec_helper"

describe PrivacyResumesController do
  describe "routing" do

    it "routes to #index" do
      get("/privacy_resumes").should route_to("privacy_resumes#index")
    end

    it "routes to #new" do
      get("/privacy_resumes/new").should route_to("privacy_resumes#new")
    end

    it "routes to #show" do
      get("/privacy_resumes/1").should route_to("privacy_resumes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/privacy_resumes/1/edit").should route_to("privacy_resumes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/privacy_resumes").should route_to("privacy_resumes#create")
    end

    it "routes to #update" do
      put("/privacy_resumes/1").should route_to("privacy_resumes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/privacy_resumes/1").should route_to("privacy_resumes#destroy", :id => "1")
    end

  end
end
