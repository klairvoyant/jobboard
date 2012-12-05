require 'spec_helper'

#user_id     integer
#option_no   integer  1=create resume manually  2=import information from linkedin  3=upload resume 4= paste your resume
#file_name    string
#type      : integer  1=text  2=video
#data :      text
describe Resume do

  before(:each) do
    @resume=Resume.new( :user_id=>"2",:option_no=>"3")
  end

  it "valid with all data" do

    @resume.should be_valid
  end

  it "is not valid without user_id" do

    @resume.user_id=nil
    @resume.should_not be_valid
  end
  it "is not valid without option_no" do

    @resume.option_no=nil
    @resume.should_not be_valid

  end
  it "is valid file_name with option_no 3" do
    @resume.file_name="filename"
    @resume.option_no=3
    @resume.should be_valid
  end


  it "is valid file_name not have any value" do
    @resume.file_name=nil
    @resume.option_no=1
    @resume.should be_valid

  end
  it "is not valid data without option_no 4"  do
    @resume.data="value"
    @resume.option_no=4
    @resume.should be_valid
  end
  it "is valid data not have any value" do
    @resume.data=nil
    @resume.option_no=1
    @resume.should be_valid

  end







end
