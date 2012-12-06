require 'spec_helper'

describe "certifications/new" do
  before(:each) do
    assign(:certification, stub_model(Certification).as_new_record)
  end

  it "renders new certification form" do
    render

    rendered.should have_selector("form", :action => certifications_path, :method => "post") do |form|
    end
  end
end
