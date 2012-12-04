require 'spec_helper'


#resume_id: integer
#objective :text
#area_of_interest :string
#job_type :string
#salary_range :string
#validates :interest_area_id, :job_type_id, :objective, :salary_range_id,:resume_id, :presence => true
#validates :interest_area_id,:job_type_id, :salary_range_id,:resume_id, :numericality => { :only_integer => true }

describe Objective do

  before(:each) do
    @objective=Objective.new()
    @objective.interest_area_id=2
    @objective.job_type_id=2
    @objective.salary_range_id=1
    @objective.resume_id=7
    @objective.objective="better career"
  end

  it "valid to save" do
    @objective.save
  end

  it " invalid to have nil interest area" do
    @objective.interest_area=nil
    @objective.should_not be_valid

  end
  it "invalid to have nil job type"  do
    @objective.job_type_id=nil
    @objective.should_not be_valid
  end
  it "invalid to have nil objective" do
    @objective.objective=nil
    @objective.should_not be_valid

  end
  it "invalid to have nil salary range" do
  @objective.salary_range_id=nil
  @objective.should_not be_valid
  end

  it 'invalid to have nil resume_id' do
    @objective.resume_id=nil
    @objective.should_not be_valid

  end

  it "invaild not have integer for interest area id" do
    @objective.interest_area_id="er"
    @objective.should_not be_valid

  end

  it "invaild not have integer for job type id" do
    @objective.job_type_id="rt"
    @objective.should_not be_valid
  end
  it "invaild not have integer for salary range id" do
    @objective.salary_range_id="rt"
    @objective.should_not be_valid
  end
  it "invaild not have integer for resume id" do
    @objective.resume_id="rt"
    @objective.should_not be_valid
  end

end
