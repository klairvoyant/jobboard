require 'spec_helper'


#user_id :integer
#name    :string
#school  :string
#area_of_study :string
#email :string
#phone :string
#photo :srting
#video :string
#about_me :text
#experience :text
#validates :about_me, :area_of_study, :email, :experience, :name, :phone, :photo, :school, :user_id, :video, :presence => true

describe PersonalDatum do

  before(:each) do
    @personaldatum=PersonalDatum.new(:about_me=>"about me", :area_of_study=>"computer", :email=>"john@klairvoyant.com", :experience=>"experience", :name=>"john", :phone=>"56789", :school=>"my school", :user_id=>2)

  end

  it "valid to save" do
    @personaldatum.save
    @personaldatum.should be_valid
  end
  it "invalid not have value for about me" do
    @personaldatum.about_me=nil
    @personaldatum.should_not be_valid
  end

  it "invalid not have value for area of study" do
    @personaldatum.area_of_study=nil
    @personaldatum.should_not be_valid
  end
  it "invalid not have value for email" do
    @personaldatum.email=nil
    @personaldatum.should_not be_valid
  end
  it "invalid not have value for experience" do
    @personaldatum.experience=nil
    @personaldatum.should_not be_valid
  end
  it "invalid not have value for name" do
    @personaldatum.name=nil
    @personaldatum.should_not be_valid

  end
  it "invalid not have value for phone" do
    @personaldatum.phone=nil
    @personaldatum.should_not be_valid
  end

  it "invalid not have value for School" do
    @personaldatum.school=nil
    @personaldatum.should_not be_valid
  end
  it "invalid not have value for user id" do
    @personaldatum.user_id=nil
    @personaldatum.should_not be_valid
  end

  it "invalid not have integer value for user id" do
    @personaldatum.user_id='gh'
    @personaldatum.should_not be_valid
  end

  it "not vaild with out a proper email" do
    @personaldatum.email="jo.com"
    @personaldatum.should_not be_valid
  end
  it "vaild with proper email" do
    @personaldatum.email="john@klairvoyant.com"
    @personaldatum.should be_valid

  end
  it "not vaild with out a proper email" do
    @personaldatum.email="jo@com"
    @personaldatum.should_not be_valid
  end

end
