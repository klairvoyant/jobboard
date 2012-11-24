require 'spec_helper'

describe "languages/show" do
  before(:each) do
    @language = assign(:language, stub_model(Language,
      :resume_id => 1,
      :language_name => "Language Name",
      :language_proficiency => "Language Proficiency"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Language Name/)
    rendered.should match(/Language Proficiency/)
  end
end
