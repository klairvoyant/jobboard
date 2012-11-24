require 'spec_helper'

describe "objectives/show" do
  before(:each) do
    @objective = assign(:objective, stub_model(Objective,
      :objective => "MyText",
      :area_of_interest => "Area Of Interest",
      :job_type => "Job Type",
      :salary_range => "Salary Range"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    rendered.should match(/Area Of Interest/)
    rendered.should match(/Job Type/)
    rendered.should match(/Salary Range/)
  end
end
