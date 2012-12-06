require 'spec_helper'

describe "skills/new" do
  before(:each) do
    assign(:skill, stub_model(Skill).as_new_record)
  end

  it "renders new skill form" do
    render

    rendered.should have_selector("form", :action => skills_path, :method => "post") do |form|
    end
  end
end
