require 'spec_helper'

describe "file_uploads/show" do
  before(:each) do
    @file_upload = assign(:file_upload, stub_model(FileUpload,
      :user_id => 1,
      :file_type => 2,
      :file_path => "File Path"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/File Path/)
  end
end
