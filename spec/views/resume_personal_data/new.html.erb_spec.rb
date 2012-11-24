require 'spec_helper'

describe "resume_personal_data/new" do
  before(:each) do
    assign(:resume_personal_datum, stub_model(ResumePersonalDatum,
      :resume_id => 1,
      :resume_name => "MyString",
      :user_photo => "MyString",
      :city => "MyString",
      :state => "MyString",
      :country => "MyString",
      :zip => "MyString",
      :phone => "MyString",
      :timezone => "MyString",
      :linkedin_profile_path => "MyString",
      :facebook_profile_path => "MyString",
      :about_me => "MyText",
      :experience => "MyText"
    ).as_new_record)
  end

  it "renders new resume_personal_datum form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => resume_personal_data_path, :method => "post" do
      assert_select "input#resume_personal_datum_resume_id", :name => "resume_personal_datum[resume_id]"
      assert_select "input#resume_personal_datum_resume_name", :name => "resume_personal_datum[resume_name]"
      assert_select "input#resume_personal_datum_user_photo", :name => "resume_personal_datum[user_photo]"
      assert_select "input#resume_personal_datum_city", :name => "resume_personal_datum[city]"
      assert_select "input#resume_personal_datum_state", :name => "resume_personal_datum[state]"
      assert_select "input#resume_personal_datum_country", :name => "resume_personal_datum[country]"
      assert_select "input#resume_personal_datum_zip", :name => "resume_personal_datum[zip]"
      assert_select "input#resume_personal_datum_phone", :name => "resume_personal_datum[phone]"
      assert_select "input#resume_personal_datum_timezone", :name => "resume_personal_datum[timezone]"
      assert_select "input#resume_personal_datum_linkedin_profile_path", :name => "resume_personal_datum[linkedin_profile_path]"
      assert_select "input#resume_personal_datum_facebook_profile_path", :name => "resume_personal_datum[facebook_profile_path]"
      assert_select "textarea#resume_personal_datum_about_me", :name => "resume_personal_datum[about_me]"
      assert_select "textarea#resume_personal_datum_experience", :name => "resume_personal_datum[experience]"
    end
  end
end
