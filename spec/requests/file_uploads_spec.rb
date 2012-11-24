require 'spec_helper'

describe "FileUploads" do
  describe "GET /file_uploads" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get file_uploads_path
      response.status.should be(200)
    end
  end
end
