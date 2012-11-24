require 'spec_helper'

describe "certifications/new" do
  before(:each) do
    assign(:certification, stub_model(Certification,
      :resume_id => 1,
      :certification_name => "MyString",
      :certification_year => 1
    ).as_new_record)
  end

  it "renders new certification form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => certifications_path, :method => "post" do
      assert_select "input#certification_resume_id", :name => "certification[resume_id]"
      assert_select "input#certification_certification_name", :name => "certification[certification_name]"
      assert_select "input#certification_certification_year", :name => "certification[certification_year]"
    end
  end
end
