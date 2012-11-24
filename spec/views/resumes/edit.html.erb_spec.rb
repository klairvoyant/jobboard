require 'spec_helper'

describe "resumes/edit" do
  before(:each) do
    @resume = assign(:resume, stub_model(Resume,
      :user_id => 1,
      :option_no => 1,
      :file_name => "MyString",
      :type => 1,
      :data => "MyText"
    ))
  end

  it "renders the edit resume form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => resumes_path(@resume), :method => "post" do
      assert_select "input#resume_user_id", :name => "resume[user_id]"
      assert_select "input#resume_option_no", :name => "resume[option_no]"
      assert_select "input#resume_file_name", :name => "resume[file_name]"
      assert_select "input#resume_type", :name => "resume[type]"
      assert_select "textarea#resume_data", :name => "resume[data]"
    end
  end
end
