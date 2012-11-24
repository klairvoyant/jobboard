require 'spec_helper'

describe "resume_job_data/new" do
  before(:each) do
    assign(:resume_job_datum, stub_model(ResumeJobDatum,
      :resume_id => 1,
      :objective => "MyText",
      :area_of_interest => "MyString",
      :job_type => "MyString",
      :salary => "9.99"
    ).as_new_record)
  end

  it "renders new resume_job_datum form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => resume_job_data_path, :method => "post" do
      assert_select "input#resume_job_datum_resume_id", :name => "resume_job_datum[resume_id]"
      assert_select "textarea#resume_job_datum_objective", :name => "resume_job_datum[objective]"
      assert_select "input#resume_job_datum_area_of_interest", :name => "resume_job_datum[area_of_interest]"
      assert_select "input#resume_job_datum_job_type", :name => "resume_job_datum[job_type]"
      assert_select "input#resume_job_datum_salary", :name => "resume_job_datum[salary]"
    end
  end
end
