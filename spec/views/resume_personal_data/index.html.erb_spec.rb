require 'spec_helper'

describe "resume_personal_data/index" do
  before(:each) do
    assign(:resume_personal_data, [
      stub_model(ResumePersonalDatum,
        :resume_id => 1,
        :resume_name => "Resume Name",
        :user_photo => "User Photo",
        :city => "City",
        :state => "State",
        :country => "Country",
        :zip => "Zip",
        :phone => "Phone",
        :timezone => "Timezone",
        :linkedin_profile_path => "Linkedin Profile Path",
        :facebook_profile_path => "Facebook Profile Path",
        :about_me => "MyText",
        :experience => "MyText"
      ),
      stub_model(ResumePersonalDatum,
        :resume_id => 1,
        :resume_name => "Resume Name",
        :user_photo => "User Photo",
        :city => "City",
        :state => "State",
        :country => "Country",
        :zip => "Zip",
        :phone => "Phone",
        :timezone => "Timezone",
        :linkedin_profile_path => "Linkedin Profile Path",
        :facebook_profile_path => "Facebook Profile Path",
        :about_me => "MyText",
        :experience => "MyText"
      )
    ])
  end

  it "renders a list of resume_personal_data" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Resume Name".to_s, :count => 2
    assert_select "tr>td", :text => "User Photo".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Timezone".to_s, :count => 2
    assert_select "tr>td", :text => "Linkedin Profile Path".to_s, :count => 2
    assert_select "tr>td", :text => "Facebook Profile Path".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
