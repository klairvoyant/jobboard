require 'spec_helper'

describe "personal_data/index" do
  before(:each) do
    assign(:personal_data, [
      stub_model(PersonalDatum,
        :user_id => 1,
        :name => "Name",
        :school => "School",
        :area_of_study => "Area Of Study",
        :email => "Email",
        :phone => "Phone",
        :photo => "Photo",
        :video => "Video",
        :about_me => "MyText",
        :experience => "MyText"
      ),
      stub_model(PersonalDatum,
        :user_id => 1,
        :name => "Name",
        :school => "School",
        :area_of_study => "Area Of Study",
        :email => "Email",
        :phone => "Phone",
        :photo => "Photo",
        :video => "Video",
        :about_me => "MyText",
        :experience => "MyText"
      )
    ])
  end

  it "renders a list of personal_data" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "School".to_s, :count => 2
    assert_select "tr>td", :text => "Area Of Study".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Photo".to_s, :count => 2
    assert_select "tr>td", :text => "Video".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
