require 'spec_helper'

describe "personal_data/index" do
  before(:each) do
    assign(:personal_data, [
      stub_model(PersonalDatum),
      stub_model(PersonalDatum)
    ])
  end

  it "renders a list of personal_data" do
    render
  end
end
