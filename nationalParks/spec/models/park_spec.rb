require 'spec_helper'

describe Park do
  it "has a valid factory" do
    FactoryGirl.create(:park).should be_valid
  end
  it "is invalid without a parkname" do
  	FactoryGirl.build(:park, parkname: nil).should_not be_valid
  end
  it "is invalid without a location"do
  	FactoryGirl.build(:park, location: nil).should_not be_valid
  end
  it "is invalid without information"do
  	FactoryGirl.build(:park, info: nil).should_not be_valid
  end
  it "has many microposts" do
  	t = Park.reflect_on_association(:microposts)
  	t.macro.should == :has_many
  end
end
