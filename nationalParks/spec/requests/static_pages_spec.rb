require 'spec_helper'


describe "Home Page" do
  it "should have the content 'Listing Parks'" do
    visit '/'
    expect(page).to have_content('Listing Parks')
  end
end

