require 'spec_helper'

describe "employment_histories/index" do
  before(:each) do
    assign(:employment_histories, [
      stub_model(EmploymentHistory,
        :resume_id => 1,
        :company_name => "Company Name",
        :job_title => "Job Title",
        :job_description => "MyText"
      ),
      stub_model(EmploymentHistory,
        :resume_id => 1,
        :company_name => "Company Name",
        :job_title => "Job Title",
        :job_description => "MyText"
      )
    ])
  end

  it "renders a list of employment_histories" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Company Name".to_s, :count => 2
    assert_select "tr>td", :text => "Job Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
