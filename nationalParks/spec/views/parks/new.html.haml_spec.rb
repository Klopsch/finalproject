require 'spec_helper'

describe "parks/new" do
  before(:each) do
    assign(:park, stub_model(Park).as_new_record)
  end

  it "renders new park form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", parks_path, "post" do
    end
  end
end
