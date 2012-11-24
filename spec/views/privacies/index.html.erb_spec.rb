require 'spec_helper'

describe "privacies/index" do
  before(:each) do
    assign(:privacies, [
      stub_model(Privacy,
        :user_id => 1,
        :resume_id => 2,
        :privacy => false
      ),
      stub_model(Privacy,
        :user_id => 1,
        :resume_id => 2,
        :privacy => false
      )
    ])
  end

  it "renders a list of privacies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
