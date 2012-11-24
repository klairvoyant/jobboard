require 'spec_helper'

describe "certifications/index" do
  before(:each) do
    assign(:certifications, [
      stub_model(Certification,
        :resume_id => 1,
        :certification_name => "Certification Name",
        :certification_year => 2
      ),
      stub_model(Certification,
        :resume_id => 1,
        :certification_name => "Certification Name",
        :certification_year => 2
      )
    ])
  end

  it "renders a list of certifications" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Certification Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
