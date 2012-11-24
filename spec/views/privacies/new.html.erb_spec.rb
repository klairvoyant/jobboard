require 'spec_helper'

describe "privacies/new" do
  before(:each) do
    assign(:privacy, stub_model(Privacy,
      :user_id => 1,
      :resume_id => 1,
      :privacy => false
    ).as_new_record)
  end

  it "renders new privacy form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => privacies_path, :method => "post" do
      assert_select "input#privacy_user_id", :name => "privacy[user_id]"
      assert_select "input#privacy_resume_id", :name => "privacy[resume_id]"
      assert_select "input#privacy_privacy", :name => "privacy[privacy]"
    end
  end
end
