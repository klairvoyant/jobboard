require 'spec_helper'

describe "file_uploads/edit" do
  before(:each) do
    @file_upload = assign(:file_upload, stub_model(FileUpload,
      :user_id => 1,
      :file_type => 1,
      :file_path => "MyString"
    ))
  end

  it "renders the edit file_upload form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => file_uploads_path(@file_upload), :method => "post" do
      assert_select "input#file_upload_user_id", :name => "file_upload[user_id]"
      assert_select "input#file_upload_file_type", :name => "file_upload[file_type]"
      assert_select "input#file_upload_file_path", :name => "file_upload[file_path]"
    end
  end
end
