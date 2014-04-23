#spec/factories/parks.rb
FactoryGirl.define do
  factory :park do |f|
    f.park_name "Rocky Mountain"
    f.location "Colorado"
  end
end
