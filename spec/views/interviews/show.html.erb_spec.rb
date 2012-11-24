require 'spec_helper'

describe "interviews/show" do
  before(:each) do
    @interview = assign(:interview, stub_model(Interview,
      :resume_id => 1,
      :interview_type => 2,
      :job_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
