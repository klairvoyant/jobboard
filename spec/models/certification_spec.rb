require 'spec_helper'

#resume_id :integer
#certification_name : string
#certification_year : integer
#validates :certification_name, :certification_year,:resume_id, :presence => true


describe Certification do
  before(:each) do
    @certification=Certification.new(:certification_name=>"certi1",:resume_id=>2)

  end
  it "valid to save" do
    @certification.save
    @certification.should be_valid
  end
  it "invalid without certification name" do
    @certification.certification_name=nil
    @certification.should_not be_valid
  end

  it "invalid without resume id" do
    @certification.resume_id=nil
    @certification.should_not be_valid
  end
  it "invalid resume id if not integer"do
    @certification.resume_id='rt'
    @certification.should_not be_valid
  end


end
