require 'spec_helper'

describe "certifications/edit" do
  before(:each) do
    @certification = assign(:certification, stub_model(Certification,
      :resume_id => 1,
      :certification_name => "MyString",
      :certification_year => 1
    ))
  end

  it "renders the edit certification form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => certifications_path(@certification), :method => "post" do
      assert_select "input#certification_resume_id", :name => "certification[resume_id]"
      assert_select "input#certification_certification_name", :name => "certification[certification_name]"
      assert_select "input#certification_certification_year", :name => "certification[certification_year]"
    end
  end
end
