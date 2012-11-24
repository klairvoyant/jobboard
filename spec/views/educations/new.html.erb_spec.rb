require 'spec_helper'

describe "educations/new" do
  before(:each) do
    assign(:education, stub_model(Education,
      :resume_id => 1,
      :school_name => "MyString",
      :school_type => "MyString",
      :state => "MyString",
      :country => "MyString",
      :course => "MyString",
      :level => "MyString"
    ).as_new_record)
  end

  it "renders new education form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => educations_path, :method => "post" do
      assert_select "input#education_resume_id", :name => "education[resume_id]"
      assert_select "input#education_school_name", :name => "education[school_name]"
      assert_select "input#education_school_type", :name => "education[school_type]"
      assert_select "input#education_state", :name => "education[state]"
      assert_select "input#education_country", :name => "education[country]"
      assert_select "input#education_course", :name => "education[course]"
      assert_select "input#education_level", :name => "education[level]"
    end
  end
end
