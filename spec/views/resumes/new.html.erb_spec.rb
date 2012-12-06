 require 'spec_helper'

describe "resumes/new" do
  before(:each) do
    assign(:resume, stub_model(Resume).as_new_record)
  end

  it "renders new resume form" do
    render

    rendered.should have_selector("form", :action => resumes_path, :method => "post") do |form|
      form.should have_selector("input",:type=>"submit")
      form.should have_selector("input",:type=>"file")

    end
  end
end
