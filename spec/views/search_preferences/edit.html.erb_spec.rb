require 'spec_helper'

describe "search_preferences/edit" do
  before(:each) do
    @search_preference = assign(:search_preference, stub_model(SearchPreference))
  end

  it "renders the edit search_preference form" do
    render

    rendered.should have_selector("form", :action => search_preference_path(@search_preference), :method => "post") do |form|
    end
  end
end
