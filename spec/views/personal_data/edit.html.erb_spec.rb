require 'spec_helper'

describe "personal_data/edit" do
  before(:each) do
    @personal_datum = assign(:personal_datum, stub_model(PersonalDatum,
      :user_id => 1,
      :name => "MyString",
      :school => "MyString",
      :area_of_study => "MyString",
      :email => "MyString",
      :phone => "MyString",
      :photo => "MyString",
      :video => "MyString",
      :about_me => "MyText",
      :experience => "MyText"
    ))
  end

  it "renders the edit personal_datum form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => personal_data_path(@personal_datum), :method => "post" do
      assert_select "input#personal_datum_user_id", :name => "personal_datum[user_id]"
      assert_select "input#personal_datum_name", :name => "personal_datum[name]"
      assert_select "input#personal_datum_school", :name => "personal_datum[school]"
      assert_select "input#personal_datum_area_of_study", :name => "personal_datum[area_of_study]"
      assert_select "input#personal_datum_email", :name => "personal_datum[email]"
      assert_select "input#personal_datum_phone", :name => "personal_datum[phone]"
      assert_select "input#personal_datum_photo", :name => "personal_datum[photo]"
      assert_select "input#personal_datum_video", :name => "personal_datum[video]"
      assert_select "textarea#personal_datum_about_me", :name => "personal_datum[about_me]"
      assert_select "textarea#personal_datum_experience", :name => "personal_datum[experience]"
    end
  end
end
