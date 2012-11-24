require 'spec_helper'

describe "certifications/show" do
  before(:each) do
    @certification = assign(:certification, stub_model(Certification,
      :resume_id => 1,
      :certification_name => "Certification Name",
      :certification_year => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Certification Name/)
    rendered.should match(/2/)
  end
end
