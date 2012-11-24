require 'spec_helper'

describe "skills/new" do
  before(:each) do
    assign(:skill, stub_model(Skill,
      :resume_id => 1,
      :skill_name => "MyString",
      :skill_years => 1
    ).as_new_record)
  end

  it "renders new skill form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => skills_path, :method => "post" do
      assert_select "input#skill_resume_id", :name => "skill[resume_id]"
      assert_select "input#skill_skill_name", :name => "skill[skill_name]"
      assert_select "input#skill_skill_years", :name => "skill[skill_years]"
    end
  end
end
