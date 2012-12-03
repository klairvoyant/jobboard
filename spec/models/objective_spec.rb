require 'spec_helper'


#resume_id: integer
#objective :text
#area_of_interest :string
#job_type :string
#salary_range :string
#validates :area_of_interest, :job_type, :objective,:resume_id , :salary_range, :presence => true

describe Objective do

  before(:each) do
    @objective=Objective.new( :job_type=>"developer",:objective=>"Better career",:salary_range=>"5600")
  end
  it "valid to have job type"  do
    @objective.job_type=nil
    @objective.should_not be_valid
  end
  it "valid to have job type" do
    @objective.objective=nil
    @objective.should_not be_valid

  end
  it "valide to have salary range" do
  @objective.salary_range=nil
  @objective.should_not be_valid
  end

  it 'valid to have resume_id' do
    @objective.resume_id=nil
    @objective.should_not be_valid

  end

end
