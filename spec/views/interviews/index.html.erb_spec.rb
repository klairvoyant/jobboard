require 'spec_helper'

describe "interviews/index" do
  before(:each) do
    assign(:interviews, [
      stub_model(Interview,
        :resume_id => 1,
        :interview_type => 2,
        :job_id => 3
      ),
      stub_model(Interview,
        :resume_id => 1,
        :interview_type => 2,
        :job_id => 3
      )
    ])
  end

  it "renders a list of interviews" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
