require 'spec_helper'

describe "search_preferences/show" do
  before(:each) do
    @search_preference = assign(:search_preference, stub_model(SearchPreference,
      :user_id => 1,
      :category_id => 2,
      :city => "City",
      :state => "State",
      :zipcode => "Zipcode"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/City/)
    rendered.should match(/State/)
    rendered.should match(/Zipcode/)
  end
end
