require 'spec_helper'

#resume_id :integer
#skill_name   string
#skill_years  integer
#validates :skill_name, :skill_years,:resume_id, :presence => true


describe Skill do
  before(:each) do
    @skill=Skill.new(:skill_name=>"C++",:skill_years=>4,:resume_id=>2 )

  end
  it "valid to save" do
    @skill.save
    @skill.should be_valid
  end
  it "invalid without a skill name" do
    @skill.skill_name=nil
    @skill.should_not be_valid
  end
  it "invalid without  skill years" do
    @skill.skill_years=nil
    @skill.should_not be_valid
  end
  it "invalid without resume id" do
    @skill.resume_id=nil
    @skill.should_not be_valid
  end
  it "invaild not have integer for resume id" do
    @skill.resume_id="rt"
    @skill.should_not be_valid
  end
  it "invaild not have integer for skill years" do

    @skill.skill_years="rt"
    @skill.should_not be_valid
  end


end
