require 'spec_helper'

#user_id: integer
#resume_id :integer
#privacy: boolean 0=serachable 1=private
#validates :privacy,:user_id,:resume_id, :presence => true

describe PrivacyResume do
  before(:each) do
    @privacyresume= PrivacyResume.new(:user_id=>7,:resume_id=>2,:privacy=>true )
  end
  it "valid to save" do
    @privacyresume.save
    @privacyresume.should be_valid
  end
  it "invalid without a user id" do
    @privacyresume.user_id=nil
    @privacyresume.should_not be_valid
  end
  it "invalid without a resume id" do
    @privacyresume.resume_id=nil
    @privacyresume.should_not be_valid
  end
  it "not valid without integer for resume id" do
    @privacyresume.resume_id="rt"
    @privacyresume.should_not be_valid
  end
  it "not valid without integer for user id" do
    @privacyresume.user_id="rt"
    @privacyresume.should_not be_valid
  end
end
