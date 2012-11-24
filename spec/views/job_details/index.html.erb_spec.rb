require 'spec_helper'

describe "job_details/index" do
  before(:each) do
    assign(:job_details, [
      stub_model(JobDetail,
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
      ),
      stub_model(JobDetail,
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
      )
    ])
  end

  it "renders a list of job_details" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Job Title".to_s, :count => 2
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    assert_select "tr>td", :text => "Company".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Job Type".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Education Level".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Zip Code".to_s, :count => 2
  end
end
