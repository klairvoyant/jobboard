require 'spec_helper'

describe "objectives/new" do
  before(:each) do
    assign(:objective, stub_model(Objective,
      :objective => "MyText",
      :area_of_interest => "MyString",
      :job_type => "MyString",
      :salary_range => "MyString"
    ).as_new_record)
  end

  it "renders new objective form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => objectives_path, :method => "post" do
      assert_select "textarea#objective_objective", :name => "objective[objective]"
      assert_select "input#objective_area_of_interest", :name => "objective[area_of_interest]"
      assert_select "input#objective_job_type", :name => "objective[job_type]"
      assert_select "input#objective_salary_range", :name => "objective[salary_range]"
    end
  end
end
