require 'spec_helper'

#user_id: integer
#privacy: boolean 0=serachable 1=private
#validates :privacy,:user_id, :presence => true

describe Privacy do

  before(:each) do
    @privacy= Privacy.new(:user_id=>7,:privacy=>"true" )
  end
  it "valid to save" do
    @privacy.save
    @privacy.should be_valid
  end
  it "invalid without a user id" do
    @privacy.user_id=nil
    @privacy.should_not be_valid
  end
   it "not valid without integer for user id" do
    @privacy.user_id="rt"
    @privacy.should_not be_valid
  end

end
