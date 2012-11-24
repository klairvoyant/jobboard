require 'spec_helper'

describe "linkedin_details/show" do
  before(:each) do
    @linkedin_detail = assign(:linkedin_detail, stub_model(LinkedinDetail,
      :user_id => 1,
      :email => "Email",
      :profile_id => "Profile"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Email/)
    rendered.should match(/Profile/)
  end
end
