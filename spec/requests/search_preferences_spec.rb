require 'spec_helper'

describe "SearchPreferences" do
  describe "GET /search_preferences" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get search_preferences_path
      response.status.should be(200)
    end
  end
end
