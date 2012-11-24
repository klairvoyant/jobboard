require 'spec_helper'

describe "personal_data/show" do
  before(:each) do
    @personal_datum = assign(:personal_datum, stub_model(PersonalDatum,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Name/)
    rendered.should match(/School/)
    rendered.should match(/Area Of Study/)
    rendered.should match(/Email/)
    rendered.should match(/Phone/)
    rendered.should match(/Photo/)
    rendered.should match(/Video/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
  end
end
