#spec/factories/micropost.rb
FactoryGirl.define do
  factory :micropost do |f|
    f.content "Here is a little post!"
    f.user mock_model(User)
    f.park mock_model(Park)
    end
end
