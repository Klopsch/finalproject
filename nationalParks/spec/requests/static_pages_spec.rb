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
  it "should have the content 'Microposts' " do
    visit '/'
   	expect(page).to have_content('Microposts')
  end
end

describe "Sign Up" do
  it "should have the title 'Sign up'" do
    visit'/users/sign_up'
    expect(page).to have_content('Sign up')
  end
  it "should have the content 'Email' and 'Password" do
    visit '/users/sign_up'
    expect(page).to have_content("Email")
    expect(page).to have_content("Password")
  end
end

describe "Sign Up" do
  it "should have the content 'Sign in'" do
    visit'/users/sign_in'
    expect(page).to have_content('Sign in')
  end
  it "should have the content 'Email' and 'Password" do
    visit '/users/sign_in'
    expect(page).to have_content("Email")
    expect(page).to have_content("Password")
  end
end



