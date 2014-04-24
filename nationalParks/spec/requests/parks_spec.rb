require 'spec_helper'

describe "Parks" do
  describe "GET /parks" do
  it "should have the content 'Listing parks'" do
    visit '/parks'
    expect(page).to have_content('Listing parks')
  end
  it "should have the content 'Parkname' " do
    visit '/parks'
   	expect(page).to have_content('Parkname')
  end
  it "should have the content 'Microposts' " do
    visit '/parks'
   	expect(page).to have_content('Microposts')
  end
  end
end
