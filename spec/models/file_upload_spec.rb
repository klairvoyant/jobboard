require 'spec_helper'

#user_id: integer
#file_type: integer  1=resume,2=cover letter, 3=letters of recommendation
#file_path :string
#validates :file_path, :file_type,:user_id, :presence => true
#validates :user_id, :numericality => { :only_integer => true }

describe FileUpload do

  before(:each) do
    @fileupload=FileUpload.new(:file_type=>2, :file_path=>"computer",:user_id=>7)

  end
  it "not valid without file path" do
    @fileupload.file_path=nil
    @fileupload.should_not be_valid
  end

  it"not valid with out file type" do
    @fileupload.file_type=nil
    @fileupload.should_not be_valid

  end

  it "not valid with out user id" do
    @fileupload.user_id=nil
    @fileupload.should_not be_valid
  end

  it "not vaild without having integer for file type" do
    @fileupload.file_type="t"
    @fileupload.should_not be_valid
  end

  it "not vaild without having integer for user id" do
    @fileupload.user_id='rt'
    @fileupload.should_not be_valid
  end

end
