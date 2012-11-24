require 'spec_helper'

describe "resume_job_data/index" do
  before(:each) do
    assign(:resume_job_data, [
      stub_model(ResumeJobDatum,
        :resume_id => 1,
        :objective => "MyText",
        :area_of_interest => "Area Of Interest",
        :job_type => "Job Type",
        :salary => "9.99"
      ),
      stub_model(ResumeJobDatum,
        :resume_id => 1,
        :objective => "MyText",
        :area_of_interest => "Area Of Interest",
        :job_type => "Job Type",
        :salary => "9.99"
      )
    ])
  end

  it "renders a list of resume_job_data" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Area Of Interest".to_s, :count => 2
    assert_select "tr>td", :text => "Job Type".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
