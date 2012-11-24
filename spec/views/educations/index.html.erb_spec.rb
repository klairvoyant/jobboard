require 'spec_helper'

describe "educations/index" do
  before(:each) do
    assign(:educations, [
      stub_model(Education,
        :resume_id => 1,
        :school_name => "School Name",
        :school_type => "School Type",
        :state => "State",
        :country => "Country",
        :course => "Course",
        :level => "Level"
      ),
      stub_model(Education,
        :resume_id => 1,
        :school_name => "School Name",
        :school_type => "School Type",
        :state => "State",
        :country => "Country",
        :course => "Course",
        :level => "Level"
      )
    ])
  end

  it "renders a list of educations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "School Name".to_s, :count => 2
    assert_select "tr>td", :text => "School Type".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "Course".to_s, :count => 2
    assert_select "tr>td", :text => "Level".to_s, :count => 2
  end
end
