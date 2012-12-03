require 'spec_helper'

describe "time_zones/index" do
  before(:each) do
    assign(:time_zones, [
      stub_model(TimeZone,
        :user_id => 1,
        :time_zone => "Time Zone"
      ),
      stub_model(TimeZone,
        :user_id => 1,
        :time_zone => "Time Zone"
      )
    ])
  end

  it "renders a list of time_zones" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Time Zone".to_s, :count => 2
  end
end
