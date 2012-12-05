require 'spec_helper'

#user_id: integer
#time_zone:string
#validates :time_zone,:user_id, :presence => true
#validates :user_id, :numericality => { :only_integer => true }


describe TimeZone do
  before(:each) do
    @timezone=TimeZone.new(:user_id=>4,:time_zone=>"5:30")

  end
  it "valid to save" do
    @timezone.save
    @timezone.should be_valid
  end
  it "invalid without user_id" do
    @timezone.user_id=nil
    @timezone.should_not be_valid
  end
  it "invalid without time zone" do
    @timezone.time_zone=nil
    @timezone.should_not be_valid
  end
  it "invalid with out integer value for user id" do
    @timezone.user_id='gt'
    @timezone.should_not be_valid
  end

end
