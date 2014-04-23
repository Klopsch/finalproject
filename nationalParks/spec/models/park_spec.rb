require 'spec_helper'

describe Park do
  it "has a valid factory" do
    Factory.create(:park).should be_valid
  end
  it "is invalid without a parkname"
  it "is invalid without a location"
  it "has many microposts"
end
