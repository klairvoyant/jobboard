require 'spec_helper'

describe "languages/new" do
  before(:each) do
    assign(:language, stub_model(Language,
      :resume_id => 1,
      :language_name => "MyString",
      :language_proficiency => "MyString"
    ).as_new_record)
  end

  it "renders new language form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => languages_path, :method => "post" do
      assert_select "input#language_resume_id", :name => "language[resume_id]"
      assert_select "input#language_language_name", :name => "language[language_name]"
      assert_select "input#language_language_proficiency", :name => "language[language_proficiency]"
    end
  end
end
