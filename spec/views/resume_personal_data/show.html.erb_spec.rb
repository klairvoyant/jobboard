require 'spec_helper'

describe "resume_personal_data/show" do
  before(:each) do
    @resume_personal_datum = assign(:resume_personal_datum, stub_model(ResumePersonalDatum,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Resume Name/)
    rendered.should match(/User Photo/)
    rendered.should match(/City/)
    rendered.should match(/State/)
    rendered.should match(/Country/)
    rendered.should match(/Zip/)
    rendered.should match(/Phone/)
    rendered.should match(/Timezone/)
    rendered.should match(/Linkedin Profile Path/)
    rendered.should match(/Facebook Profile Path/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
  end
end
