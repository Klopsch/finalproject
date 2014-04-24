#spec/factories/park.rb
FactoryGirl.define do
  factory :park do |f|
    f.parkname "Rocky Mountain"
    f.location "Colorado"
    f.info "This is some information"
  end
end
