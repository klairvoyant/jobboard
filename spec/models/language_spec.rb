require 'spec_helper'

#resume_id :integer
#language_name : string
#language_proficiency:string
#validates :language_name, :language_proficiency,;resume_id, :presence => true


describe Language do
  before(:each) do
    @language= Language.new(:language_name=>"java",:language_proficiency=>"good",:resume_id=>2 )
  end
  it "valid to save" do
    @language.save
    @language.should be_valid
  end
  it 'invalid without language name' do
    @language.language_name=nil
    @language.should_not be_valid
  end
  it 'invalid without language proficiency' do
    @language.language_proficiency=nil
    @language.should_not be_valid
  end
  it 'invalid without resume id' do
    @language.resume_id=nil
    @language.should_not be_valid
  end
  it "not valid without integer for resume id" do
    @language.resume_id="rt"
    @language.should_not be_valid
  end
end
