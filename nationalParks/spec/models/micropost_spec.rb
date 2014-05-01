require 'spec_helper'

describe Micropost do
  it "has a valid factory" do
    FactoryGirl.build(:micropost).should_not be_valid
  end
  it "is invalid without content" do
  	FactoryGirl.build(:micropost, content: nil).should_not be_valid
  end
  it "is invalid without a user"do
  	FactoryGirl.build(:micropost, user: nil).should_not be_valid
  end
  it "is invalid without a park"do
  	FactoryGirl.build(:micropost, park: nil).should_not be_valid
  end
  it "belongs to park" do
  	t = Micropost.reflect_on_association(:park)
  	t.macro.should == :belongs_to
  end
end
