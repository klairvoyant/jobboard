require 'spec_helper'

describe "linkedin_details/new" do
  before(:each) do
    assign(:linkedin_detail, stub_model(LinkedinDetail,
      :user_id => 1,
      :email => "MyString",
      :profile_id => "MyString"
    ).as_new_record)
  end

  it "renders new linkedin_detail form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => linkedin_details_path, :method => "post" do
      assert_select "input#linkedin_detail_user_id", :name => "linkedin_detail[user_id]"
      assert_select "input#linkedin_detail_email", :name => "linkedin_detail[email]"
      assert_select "input#linkedin_detail_profile_id", :name => "linkedin_detail[profile_id]"
    end
  end
end
