require 'spec_helper'

describe "employment_histories/show" do
  before(:each) do
    @employment_history = assign(:employment_history, stub_model(EmploymentHistory,
      :resume_id => 1,
      :company_name => "Company Name",
      :job_title => "Job Title",
      :job_description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Company Name/)
    rendered.should match(/Job Title/)
    rendered.should match(/MyText/)
  end
end
