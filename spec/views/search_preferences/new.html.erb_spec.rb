require 'spec_helper'

describe "search_preferences/new" do
  before(:each) do
    assign(:search_preference, stub_model(SearchPreference,
      :user_id => 1,
      :category_id => 1,
      :city => "MyString",
      :state => "MyString",
      :zipcode => "MyString"
    ).as_new_record)
  end

  it "renders new search_preference form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => search_preferences_path, :method => "post" do
      assert_select "input#search_preference_user_id", :name => "search_preference[user_id]"
      assert_select "input#search_preference_category_id", :name => "search_preference[category_id]"
      assert_select "input#search_preference_city", :name => "search_preference[city]"
      assert_select "input#search_preference_state", :name => "search_preference[state]"
      assert_select "input#search_preference_zipcode", :name => "search_preference[zipcode]"
    end
  end
end
