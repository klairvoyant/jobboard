require 'spec_helper'

describe "job_details/edit" do
  before(:each) do
    @job_detail = assign(:job_detail, stub_model(JobDetail,
      :job_title => "MyString",
      :category => "MyString",
      :company => "MyString",
      :direct_employee => false,
      :staffing_agency => false,
      :job_type => "MyString",
      :experience => 1,
      :education_level => "MyString",
      :description => "MyText",
      :zip_code => "MyString"
    ))
  end

  it "renders the edit job_detail form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => job_details_path(@job_detail), :method => "post" do
      assert_select "input#job_detail_job_title", :name => "job_detail[job_title]"
      assert_select "input#job_detail_category", :name => "job_detail[category]"
      assert_select "input#job_detail_company", :name => "job_detail[company]"
      assert_select "input#job_detail_direct_employee", :name => "job_detail[direct_employee]"
      assert_select "input#job_detail_staffing_agency", :name => "job_detail[staffing_agency]"
      assert_select "input#job_detail_job_type", :name => "job_detail[job_type]"
      assert_select "input#job_detail_experience", :name => "job_detail[experience]"
      assert_select "input#job_detail_education_level", :name => "job_detail[education_level]"
      assert_select "textarea#job_detail_description", :name => "job_detail[description]"
      assert_select "input#job_detail_zip_code", :name => "job_detail[zip_code]"
    end
  end
end
