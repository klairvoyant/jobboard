require 'spec_helper'

#resume_id :integer
#company_name :string
#start_date  :date
#end_date :date
#job_title :string
#job_description: text
#validates :company_name,:job_description, :job_title,:resume_id :presence => true

describe EmploymentHistory do

  before(:each) do
    @employmenthistory=EmploymentHistory.new(:company_name=>"klairvoyant",:job_description=>"developer",:job_title=>"Developer",:resume_id=>2 )

  end
  it "valid to save" do
    @employmenthistory.save
    @employmenthistory.should be_valid

  end
  it "not valid without resume id"  do
    @employmenthistory.resume_id=nil
    @employmenthistory.should_not be_valid
  end
  it "not valid without company name" do
    @employmenthistory.company_name=nil
    @employmenthistory.should_not be_valid
  end
  it "not valid without job title" do
    @employmenthistory.job_title=nil
    @employmenthistory.should_not be_valid
  end
  it "not valid without description" do
    @employmenthistory.job_description=nil
    @employmenthistory.should_not be_valid
  end

  it "not valid without integer for resume id" do
    @employmenthistory.resume_id="rt"
    @employmenthistory.should_not be_valid
  end


end
