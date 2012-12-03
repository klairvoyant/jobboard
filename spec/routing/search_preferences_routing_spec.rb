require "spec_helper"

describe SearchPreferencesController do
  describe "routing" do

    it "routes to #index" do
      get("/search_preferences").should route_to("search_preferences#index")
    end

    it "routes to #new" do
      get("/search_preferences/new").should route_to("search_preferences#new")
    end

    it "routes to #show" do
      get("/search_preferences/1").should route_to("search_preferences#show", :id => "1")
    end

    it "routes to #edit" do
      get("/search_preferences/1/edit").should route_to("search_preferences#edit", :id => "1")
    end

    it "routes to #create" do
      post("/search_preferences").should route_to("search_preferences#create")
    end

    it "routes to #update" do
      put("/search_preferences/1").should route_to("search_preferences#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/search_preferences/1").should route_to("search_preferences#destroy", :id => "1")
    end

  end
end
