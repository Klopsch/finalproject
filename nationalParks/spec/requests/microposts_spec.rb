require 'spec_helper'

describe "Microposts" do
  describe "GET /microposts" do
  	it "allows user to see micropost history" do
  	visit '/microposts'
  	expect(page).to have_content('You need to sign in or sign up before continuing.')
  	user = User.create(:email    => "happy@fake.com",
                       :password => "password")

    fill_in "Email",                 :with => "happy@fake.com"
    fill_in "Password",              :with => "password", :match => :prefer_exact
    
    click_button "Sign in"
    expect(page).to have_content('Signed in successfully.')
    expect(page).to have_content('Listing microposts')
  end
end
end
