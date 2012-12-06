require 'spec_helper'

describe "objectives/new" do
  before(:each) do
    assign(:objective, stub_model(Objective).as_new_record)
  end

  it "renders new objective form" do
    render

    rendered.should have_selector("form", :action => objectives_path, :method => "post") do |form|
    end
  end
end
