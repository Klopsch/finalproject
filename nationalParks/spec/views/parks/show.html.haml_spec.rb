require 'spec_helper'

describe "parks/show" do
  before(:each) do
    @park = assign(:park, stub_model(Park))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
