require 'spec_helper'

describe "languages/index" do
  before(:each) do
    assign(:languages, [
      stub_model(Language,
        :resume_id => 1,
        :language_name => "Language Name",
        :language_proficiency => "Language Proficiency"
      ),
      stub_model(Language,
        :resume_id => 1,
        :language_name => "Language Name",
        :language_proficiency => "Language Proficiency"
      )
    ])
  end

  it "renders a list of languages" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Language Name".to_s, :count => 2
    assert_select "tr>td", :text => "Language Proficiency".to_s, :count => 2
  end
end
