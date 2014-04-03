require 'spec_helper'

describe "parks/index" do
  before(:each) do
    assign(:parks, [
      stub_model(Park,
        :parkname => "Parkname",
        :location => "Location",
        :info => "Info"
      ),
      stub_model(Park,
        :parkname => "Parkname",
        :location => "Location",
        :info => "Info"
      )
    ])
  end

  it "renders a list of parks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Parkname".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "Info".to_s, :count => 2
  end
end
