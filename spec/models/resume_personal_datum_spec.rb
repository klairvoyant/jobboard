require 'spec_helper'

#
#resume_id    :integer
#resume_name  :string
#user_photo :string
#city       :string
#state      :string
#country    :string
#zip        :string
#phone      :string
#timezone   :string
#linkedin_profile_path :string
#facebook_profile_path :string
#
#validates :zip,:phone,:resume_name, :presence => true


describe ResumePersonalDatum do

  before(:each) do
    @resumepersonaldata=ResumePersonalDatum.new( :zip=>"680068",:phone=>"04875678",:resume_name=>"my first")
  end
  it "valid to have resume name"  do
    @resumepersonaldata.resume_name=nil
    @resumepersonaldata.should_not be_valid

  end
  it "valid to have zip code" do
    @resumepersonaldata.zip=nil
    @resumepersonaldata.should_not be_valid

  end
  it "valid to have phone number" do
    @resumepersonaldata.phone=nil
    @resumepersonaldata.should_not be_valid
  end
  it "valid to have resume_id " do
    @resumepersonaldata.resume_id=nil
    @resumepersonaldata.should_not be_valid
  end
end
