require 'spec_helper'

describe "job_details/show" do
  before(:each) do
    @job_detail = assign(:job_detail, stub_model(JobDetail,
      :job_title => "Job Title",
      :category => "Category",
      :company => "Company",
      :direct_employee => false,
      :staffing_agency => false,
      :job_type => "Job Type",
      :experience => 1,
      :education_level => "Education Level",
      :description => "MyText",
      :zip_code => "Zip Code"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Job Title/)
    rendered.should match(/Category/)
    rendered.should match(/Company/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/Job Type/)
    rendered.should match(/1/)
    rendered.should match(/Education Level/)
    rendered.should match(/MyText/)
    rendered.should match(/Zip Code/)
  end
end
