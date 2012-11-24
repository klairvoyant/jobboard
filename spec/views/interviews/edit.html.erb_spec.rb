require 'spec_helper'

describe "interviews/edit" do
  before(:each) do
    @interview = assign(:interview, stub_model(Interview,
      :resume_id => 1,
      :interview_type => 1,
      :job_id => 1
    ))
  end

  it "renders the edit interview form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => interviews_path(@interview), :method => "post" do
      assert_select "input#interview_resume_id", :name => "interview[resume_id]"
      assert_select "input#interview_interview_type", :name => "interview[interview_type]"
      assert_select "input#interview_job_id", :name => "interview[job_id]"
    end
  end
end
