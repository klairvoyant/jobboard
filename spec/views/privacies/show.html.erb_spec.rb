require 'spec_helper'

describe "privacies/show" do
  before(:each) do
    @privacy = assign(:privacy, stub_model(Privacy,
      :user_id => 1,
      :resume_id => 2,
      :privacy => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/false/)
  end
end
