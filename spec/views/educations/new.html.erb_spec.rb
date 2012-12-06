require 'spec_helper'

describe "educations/new" do
  before(:each) do
    assign(:education, stub_model(Education).as_new_record)
  end

  it "renders new education form" do
    render

    rendered.should have_selector("form", :action => educations_path, :method => "post") do |form|
    end
  end
end
