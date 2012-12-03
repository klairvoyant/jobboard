require 'spec_helper'

describe "search_preferences/edit" do
  before(:each) do
    @search_preference = assign(:search_preference, stub_model(SearchPreference,
      :user_id => 1,
      :category_id => 1,
      :city => "MyString",
      :state => "MyString",
      :zipcode => "MyString"
    ))
  end

  it "renders the edit search_preference form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => search_preferences_path(@search_preference), :method => "post" do
      assert_select "input#search_preference_user_id", :name => "search_preference[user_id]"
      assert_select "input#search_preference_category_id", :name => "search_preference[category_id]"
      assert_select "input#search_preference_city", :name => "search_preference[city]"
      assert_select "input#search_preference_state", :name => "search_preference[state]"
      assert_select "input#search_preference_zipcode", :name => "search_preference[zipcode]"
    end
  end
end
