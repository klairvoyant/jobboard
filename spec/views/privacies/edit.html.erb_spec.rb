require 'spec_helper'

describe "privacies/edit" do
  before(:each) do
    @privacy = assign(:privacy, stub_model(Privacy,
      :user_id => 1,
      :resume_id => 1,
      :privacy => false
    ))
  end

  it "renders the edit privacy form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => privacies_path(@privacy), :method => "post" do
      assert_select "input#privacy_user_id", :name => "privacy[user_id]"
      assert_select "input#privacy_resume_id", :name => "privacy[resume_id]"
      assert_select "input#privacy_privacy", :name => "privacy[privacy]"
    end
  end
end
