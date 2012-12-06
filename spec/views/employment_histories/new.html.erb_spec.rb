require 'spec_helper'

describe "employment_histories/new" do
  before(:each) do
    assign(:employment_history, stub_model(EmploymentHistory).as_new_record)
  end

  it "renders new employment_history form" do
    render

    rendered.should have_selector("form", :action => employment_histories_path, :method => "post") do |form|
    end
  end
end
