require 'spec_helper'

describe "file_uploads/new" do
  before(:each) do
    assign(:file_upload, stub_model(FileUpload).as_new_record)
  end

  it "renders new file_upload form" do
    render

    rendered.should have_selector("form", :action => file_uploads_path, :method => "post") do |form|
    end
  end
end
