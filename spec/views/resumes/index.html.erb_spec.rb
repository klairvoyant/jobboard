require 'spec_helper'

describe "resumes/index" do
  before(:each) do
    assign(:resumes, [
      stub_model(Resume,
        :user_id => 1,
        :option_no => 2,
        :file_name => "File Name",
        :type => 3,
        :data => "MyText"
      ),
      stub_model(Resume,
        :user_id => 1,
        :option_no => 2,
        :file_name => "File Name",
        :type => 3,
        :data => "MyText"
      )
    ])
  end

  it "renders a list of resumes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "File Name".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
