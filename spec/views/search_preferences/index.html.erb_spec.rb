require 'spec_helper'

describe "search_preferences/index" do
  before(:each) do
    assign(:search_preferences, [
      stub_model(SearchPreference,
        :user_id => 1,
        :category_id => 2,
        :city => "City",
        :state => "State",
        :zipcode => "Zipcode"
      ),
      stub_model(SearchPreference,
        :user_id => 1,
        :category_id => 2,
        :city => "City",
        :state => "State",
        :zipcode => "Zipcode"
      )
    ])
  end

  it "renders a list of search_preferences" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Zipcode".to_s, :count => 2
  end
end
