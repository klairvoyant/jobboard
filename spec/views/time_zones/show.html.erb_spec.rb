require 'spec_helper'

describe "time_zones/show" do
  before(:each) do
    @time_zone = assign(:time_zone, stub_model(TimeZone,
      :user_id => 1,
      :time_zone => "Time Zone"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Time Zone/)
  end
end
