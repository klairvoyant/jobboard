require 'spec_helper'

describe "objectives/index" do
  before(:each) do
    assign(:objectives, [
      stub_model(Objective,
        :objective => "MyText",
        :area_of_interest => "Area Of Interest",
        :job_type => "Job Type",
        :salary_range => "Salary Range"
      ),
      stub_model(Objective,
        :objective => "MyText",
        :area_of_interest => "Area Of Interest",
        :job_type => "Job Type",
        :salary_range => "Salary Range"
      )
    ])
  end

  it "renders a list of objectives" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Area Of Interest".to_s, :count => 2
    assert_select "tr>td", :text => "Job Type".to_s, :count => 2
    assert_select "tr>td", :text => "Salary Range".to_s, :count => 2
  end
end
