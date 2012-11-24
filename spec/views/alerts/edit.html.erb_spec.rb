require 'spec_helper'

describe "alerts/edit" do
  before(:each) do
    @alert = assign(:alert, stub_model(Alert,
      :user_id => 1,
      :alert_type => 1,
      :message => "MyText"
    ))
  end

  it "renders the edit alert form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => alerts_path(@alert), :method => "post" do
      assert_select "input#alert_user_id", :name => "alert[user_id]"
      assert_select "input#alert_alert_type", :name => "alert[alert_type]"
      assert_select "textarea#alert_message", :name => "alert[message]"
    end
  end
end
