require 'spec_helper'

describe "skills/index" do
  before(:each) do
    assign(:skills, [
      stub_model(Skill,
        :resume_id => 1,
        :skill_name => "Skill Name",
        :skill_years => 2
      ),
      stub_model(Skill,
        :resume_id => 1,
        :skill_name => "Skill Name",
        :skill_years => 2
      )
    ])
  end

  it "renders a list of skills" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Skill Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
