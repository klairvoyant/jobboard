require 'spec_helper'

#user_id: integer
#category_id :integer
#city :string
#state: string
#zipcode:string
#validates :category_id, :city,:state,:user_id,:zipcode, :presence => true
#validates :user_id,:category_id, :numericality => { :only_integer => true


describe SearchPreference do

  before(:each) do
    @searchpreference=SearchPreference.new(:category_id=>4,:city=>"Thrissur",:state=>"kerala",:user_id=>3,:zipcode=>"456789")

  end
  it 'valid to save' do
    @searchpreference.save
    @searchpreference.should be_valid
  end
  it "invalid to save without category id" do
    @searchpreference.category_id=nil
    @searchpreference.should_not be_valid
  end
  it "invalid to save without city" do
    @searchpreference.city=nil
    @searchpreference.should_not be_valid
  end
  it "invalid to save without state"do
    @searchpreference.state=nil
    @searchpreference.should_not be_valid
  end
  it "invalid to save without user id" do
    @searchpreference.user_id=nil
    @searchpreference.should_not be_valid
  end
  it "invalid to save without zip code" do
    @searchpreference.zipcode=nil
    @searchpreference.should_not be_valid
  end
  it "invalid not to have integer value for user id" do
    @searchpreference.user_id='ty'
    @searchpreference.should_not be_valid
  end
  it "invalid not to have integer value for category id" do
    @searchpreference.category_id='yu'
    @searchpreference.should_not be_valid
  end
end
