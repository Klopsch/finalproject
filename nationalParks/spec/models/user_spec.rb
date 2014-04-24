require 'spec_helper'

describe User do
  it "has a valid factory" do
    FactoryGirl.create(:user).should be_valid
  end
  it "is invalid without email" do
  	FactoryGirl.build(:user, email: nil).should_not be_valid
  end
  it "is invalid without a user"do
  	FactoryGirl.build(:user, password: nil).should_not be_valid
  end
  it "has many microposts" do
  	t = User.reflect_on_association(:microposts)
  	t.macro.should == :has_many
  end
end
