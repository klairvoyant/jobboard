require 'spec_helper'

describe "resumes/show" do
  before(:each) do
    @resume = assign(:resume, stub_model(Resume,
      :user_id => 1,
      :option_no => 2,
      :file_name => "File Name",
      :type => 3,
      :data => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/File Name/)
    rendered.should match(/3/)
    rendered.should match(/MyText/)
  end
end
