require 'spec_helper'

describe "resume_job_data/show" do
  before(:each) do
    @resume_job_datum = assign(:resume_job_datum, stub_model(ResumeJobDatum,
      :resume_id => 1,
      :objective => "MyText",
      :area_of_interest => "Area Of Interest",
      :job_type => "Job Type",
      :salary => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/MyText/)
    rendered.should match(/Area Of Interest/)
    rendered.should match(/Job Type/)
    rendered.should match(/9.99/)
  end
end
