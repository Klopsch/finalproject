require 'spec_helper'

describe "parks/show" do
  before(:each) do
    @park = assign(:park, stub_model(Park,
      :parkname => "Parkname",
      :location => "Location",
      :info => "Info"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Parkname/)
    rendered.should match(/Location/)
    rendered.should match(/Info/)
  end
end
