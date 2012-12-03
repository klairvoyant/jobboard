require 'spec_helper'

describe "time_zones/new" do
  before(:each) do
    assign(:time_zone, stub_model(TimeZone,
      :user_id => 1,
      :time_zone => "MyString"
    ).as_new_record)
  end

  it "renders new time_zone form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => time_zones_path, :method => "post" do
      assert_select "input#time_zone_user_id", :name => "time_zone[user_id]"
      assert_select "input#time_zone_time_zone", :name => "time_zone[time_zone]"
    end
  end
end
