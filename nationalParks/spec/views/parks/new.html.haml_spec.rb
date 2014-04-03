require 'spec_helper'

describe "parks/new" do
  before(:each) do
    assign(:park, stub_model(Park,
      :parkname => "MyString",
      :location => "MyString",
      :info => "MyString"
    ).as_new_record)
  end

  it "renders new park form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", parks_path, "post" do
      assert_select "input#park_parkname[name=?]", "park[parkname]"
      assert_select "input#park_location[name=?]", "park[location]"
      assert_select "input#park_info[name=?]", "park[info]"
    end
  end
end
