require 'spec_helper'

describe "parks/index" do
  before(:each) do
    assign(:parks, [
      stub_model(Park),
      stub_model(Park)
    ])
  end

  it "renders a list of parks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
