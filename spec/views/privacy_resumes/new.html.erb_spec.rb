require 'spec_helper'

describe "privacy_resumes/new" do
  before(:each) do
    assign(:privacy_resume, stub_model(PrivacyResume).as_new_record)
  end

  it "renders new privacy_resume form" do
    render

    rendered.should have_selector("form", :action => privacy_resumes_path, :method => "post") do |form|
    end
  end
end
