require 'spec_helper'

describe "file_uploads/index" do
  before(:each) do
    assign(:file_uploads, [
      stub_model(FileUpload,
        :user_id => 1,
        :file_type => 2,
        :file_path => "File Path"
      ),
      stub_model(FileUpload,
        :user_id => 1,
        :file_type => 2,
        :file_path => "File Path"
      )
    ])
  end

  it "renders a list of file_uploads" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "File Path".to_s, :count => 2
  end
end
