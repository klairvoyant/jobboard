require 'spec_helper'

describe "privacies/edit" do
  before(:each) do
    @privacy = assign(:privacy, stub_model(Privacy))
  end

  it "renders the edit privacy form" do
    render

    rendered.should have_selector("form", :action => privacy_path(@privacy), :method => "post") do |form|
    end
  end
end
