require 'spec_helper'

#user_id: integer
#file_type: integer  1=resume,2=cover letter, 3=letters of recommendation
#file_path :string

#validates :file_path, :presence => true

describe FileUpload do



  it "not valid without file path" do
    #@fileupload=FileUpload.new(:user_id=>1,:file_path=>nil )
    #@fileupload.save
    #@fileupload.should_not be_valid
  end

end
