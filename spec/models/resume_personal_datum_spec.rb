require 'spec_helper'

#
#resume_id    :integer
#resume_name  :string
#city       :string
#state      :string
#country    :string
#zip        :string
#phone      :string
#linkedin_profile_path :string
#facebook_profile_path :string
#
#validates :zip,:phone,:resume_name,:country :presence => true



describe ResumePersonalDatum do

  before(:each) do
    @resumepersonaldata=ResumePersonalDatum.new( :country=>"india",:resume_id=>2,:zip=>"680068",:phone=>"04875678",:resume_name=>"my first")
  end

  it "valid to save" do
    @resumepersonaldata.save
    @resumepersonaldata.should be_valid
  end
  it "invalid to have nil resume name"  do
    @resumepersonaldata.resume_name=nil
    @resumepersonaldata.should_not be_valid

  end
  it "invalid to have nil country"  do
    @resumepersonaldata.country=nil
    @resumepersonaldata.should_not be_valid

  end
  it "invalid to have no zip code" do
    @resumepersonaldata.zip=nil
    @resumepersonaldata.should_not be_valid

  end
  it "invalid to have nil phone number" do
    @resumepersonaldata.phone=nil
    @resumepersonaldata.should_not be_valid
  end
  it "invalid to have nil resume_id " do
    @resumepersonaldata.resume_id=nil
    @resumepersonaldata.should_not be_valid
  end
end
