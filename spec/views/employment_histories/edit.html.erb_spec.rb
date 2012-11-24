require 'spec_helper'

describe "employment_histories/edit" do
  before(:each) do
    @employment_history = assign(:employment_history, stub_model(EmploymentHistory,
      :resume_id => 1,
      :company_name => "MyString",
      :job_title => "MyString",
      :job_description => "MyText"
    ))
  end

  it "renders the edit employment_history form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => employment_histories_path(@employment_history), :method => "post" do
      assert_select "input#employment_history_resume_id", :name => "employment_history[resume_id]"
      assert_select "input#employment_history_company_name", :name => "employment_history[company_name]"
      assert_select "input#employment_history_job_title", :name => "employment_history[job_title]"
      assert_select "textarea#employment_history_job_description", :name => "employment_history[job_description]"
    end
  end
end
