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
  it "should have the content 'Info' " do
    visit '/'
   	expect(page).to have_content('Info')
  end
end

require "spec_helper"

describe "Sign Up" do
  it "allows new users to register" do
    visit "/users/sign_up"

    fill_in "Email",                 :with => "alindeman@example.com"
    fill_in "Password",              :with => "password", :match => :prefer_exact
    fill_in "Password confirmation", :with => "password"

    click_button "Sign up"

    page.should have_content("Welcome! You have signed up successfully.")
  end
end


describe "user sign in" do
  it "allows users to sign in after they have registered" do
    user = User.create(:email    => "happy@fake.com",
                       :password => "password")

    visit "/users/sign_in"

    fill_in "Email",    :with => "happy@fake.com"
    fill_in "Password", :with => "password"

    click_button "Sign in"

    page.should have_content("Signed in successfully.")
  end
end

describe "password/email fail" do
    it "does not allow a user to sign up with an invaild email or password" do
      visit "/users/sign_up"

      fill_in "Email",                 :with => "test"
      fill_in "Password",              :with => "pass", :match => :prefer_exact
      fill_in "Password confirmation", :with => "pass"

      click_button "Sign up"

      page.should have_content("minimum is 8 characters")
      page.should have_content("invalid")    
      page.should have_content("Please review the problems below:")
  end
end




