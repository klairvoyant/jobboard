require 'spec_helper'

describe "resume_personal_data/new" do
  before(:each) do
    assign(:resume_personal_datum, stub_model(ResumePersonalDatum).as_new_record)
  end

  it "renders new resume_personal_datum form" do
    render

    rendered.should have_selector("form", :action => resume_personal_data_path, :method => "post") do |form|
    end
  end
end
