require 'spec_helper'

describe "educations/show" do
  before(:each) do
    @education = assign(:education, stub_model(Education,
      :resume_id => 1,
      :school_name => "School Name",
      :school_type => "School Type",
      :state => "State",
      :country => "Country",
      :course => "Course",
      :level => "Level"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/School Name/)
    rendered.should match(/School Type/)
    rendered.should match(/State/)
    rendered.should match(/Country/)
    rendered.should match(/Course/)
    rendered.should match(/Level/)
  end
end
