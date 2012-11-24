require "spec_helper"

describe FileUploadsController do
  describe "routing" do

    it "routes to #index" do
      get("/file_uploads").should route_to("file_uploads#index")
    end

    it "routes to #new" do
      get("/file_uploads/new").should route_to("file_uploads#new")
    end

    it "routes to #show" do
      get("/file_uploads/1").should route_to("file_uploads#show", :id => "1")
    end

    it "routes to #edit" do
      get("/file_uploads/1/edit").should route_to("file_uploads#edit", :id => "1")
    end

    it "routes to #create" do
      post("/file_uploads").should route_to("file_uploads#create")
    end

    it "routes to #update" do
      put("/file_uploads/1").should route_to("file_uploads#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/file_uploads/1").should route_to("file_uploads#destroy", :id => "1")
    end

  end
end
