require "spec_helper"

describe PersonalDataController do
  describe "routing" do

    it "routes to #index" do
      get("/personal_data").should route_to("personal_data#index")
    end

    it "routes to #new" do
      get("/personal_data/new").should route_to("personal_data#new")
    end

    it "routes to #show" do
      get("/personal_data/1").should route_to("personal_data#show", :id => "1")
    end

    it "routes to #edit" do
      get("/personal_data/1/edit").should route_to("personal_data#edit", :id => "1")
    end

    it "routes to #create" do
      post("/personal_data").should route_to("personal_data#create")
    end

    it "routes to #update" do
      put("/personal_data/1").should route_to("personal_data#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/personal_data/1").should route_to("personal_data#destroy", :id => "1")
    end

  end
end
