require 'spec_helper'


#resume_id :integer
#school_name :string
#school_type: string
#state :string
#country:string
#start_date: date
#end_date:date
#course: string
#level:string
#validates :country, :course, :level, :school_name, :school_type, :state, :presence => true

describe Education do

  before(:each) do
    @education=Education.new(:country=>"india",:course=>"B.Sc",:level=>"graduation",:school_name=>"sree",:school_type=>"goverment",:state=>'kerala',:resume_id=>2)

  end
  it "valid to save" do
    @education.save
    @education.should be_valid
  end
  it "invalid with out resume id" do
    @education.resume_id=nil
    @education.should_not be_valid
  end
  it "invalid with out school name" do
    @education.school_name=nil
    @education.should_not be_valid
  end
  it "invalid with out school type" do
    @education.school_type=nil
    @education.should_not be_valid
  end
  it "invalid with out state" do
    @education.state=nil
    @education.should_not be_valid
  end
  it "invalid with out country" do
    @education.country=nil
    @education.should_not be_valid
  end
  it "invalid with out course" do
    @education.course=nil
    @education.should_not be_valid
  end
  it "invalid with out level" do
    @education.level=nil
    @education.should_not be_valid
  end
  it "not valid without integer for resume id" do
    @education.resume_id="rt"
    @education.should_not be_valid
  end

end
