require 'spec_helper'


describe "Home Page" do
  it "should have the content 'Listing parks'" do
    visit '/'
    expect(page).to have_content('Listing parks')
  end
  it "should have the content 'Parkname' " do
   	visit '/'
   	expect(page).to have_content('Parkname')
  end
end

