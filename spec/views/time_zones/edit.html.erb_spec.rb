require 'spec_helper'

describe "time_zones/edit" do
  before(:each) do
    @time_zone = assign(:time_zone, stub_model(TimeZone))
  end

  it "renders the edit time_zone form" do
    render

    rendered.should have_selector("form", :action => time_zone_path(@time_zone), :method => "post") do |form|
    end
  end
end
