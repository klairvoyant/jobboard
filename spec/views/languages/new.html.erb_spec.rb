require 'spec_helper'

describe "languages/new" do
  before(:each) do
    assign(:language, stub_model(Language).as_new_record)
  end

  it "renders new language form" do
    render

    rendered.should have_selector("form", :action => languages_path, :method => "post") do |form|
    end
  end
end
