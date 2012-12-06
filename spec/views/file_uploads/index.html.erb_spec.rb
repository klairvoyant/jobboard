require 'spec_helper'

describe "file_uploads/index" do
  before(:each) do
    assign(:file_uploads, [
      stub_model(FileUpload),
      stub_model(FileUpload)
    ])
  end

  it "renders a list of file_uploads" do
    render
  end
end
