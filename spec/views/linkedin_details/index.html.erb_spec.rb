require 'spec_helper'

describe "linkedin_details/index" do
  before(:each) do
    assign(:linkedin_details, [
      stub_model(LinkedinDetail,
        :user_id => 1,
        :email => "Email",
        :profile_id => "Profile"
      ),
      stub_model(LinkedinDetail,
        :user_id => 1,
        :email => "Email",
        :profile_id => "Profile"
      )
    ])
  end

  it "renders a list of linkedin_details" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Profile".to_s, :count => 2
  end
end
