require 'spec_helper'

describe "alerts/new" do
  before(:each) do
    assign(:alert, stub_model(Alert,
      :user_id => 1,
      :alert_type => 1,
      :message => "MyText"
    ).as_new_record)
  end

  it "renders new alert form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => alerts_path, :method => "post" do
      assert_select "input#alert_user_id", :name => "alert[user_id]"
      assert_select "input#alert_alert_type", :name => "alert[alert_type]"
      assert_select "textarea#alert_message", :name => "alert[message]"
    end
  end
end
