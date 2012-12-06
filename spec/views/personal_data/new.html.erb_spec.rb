require 'spec_helper'

describe "personal_data/new" do
  before(:each) do
    assign(:personal_datum, stub_model(PersonalDatum).as_new_record)
  end

  it "renders new personal_datum form" do
    render

    rendered.should have_selector("form", :action => personal_data_path, :method => "post") do |form|
    end
  end
end
