require 'spec_helper'

describe "skills/show" do
  before(:each) do
    @skill = assign(:skill, stub_model(Skill,
      :resume_id => 1,
      :skill_name => "Skill Name",
      :skill_years => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Skill Name/)
    rendered.should match(/2/)
  end
end
