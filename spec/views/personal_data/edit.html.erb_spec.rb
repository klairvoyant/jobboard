require 'spec_helper'

describe "personal_data/edit" do
  before(:each) do
    @personal_datum = assign(:personal_datum, stub_model(PersonalDatum))
  end

  it "renders the edit personal_datum form" do
    render

    rendered.should have_selector("form", :action => personal_datum_path(@personal_datum), :method => "post") do |form|
    end
  end
end
