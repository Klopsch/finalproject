require 'spec_helper'

describe "parks/edit" do
  before(:each) do
    @park = assign(:park, stub_model(Park))
  end

  it "renders the edit park form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", park_path(@park), "post" do
    end
  end
end
