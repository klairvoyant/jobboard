require 'spec_helper'

describe "alerts/show" do
  before(:each) do
    @alert = assign(:alert, stub_model(Alert,
      :user_id => 1,
      :alert_type => 2,
      :message => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/MyText/)
  end
end
