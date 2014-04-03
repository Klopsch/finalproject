# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
parks = [{ parkname: 'Fakeland', location: 'No Where', info: 'Nothing to see here' }]

parks.each do |park|
  Park.create!(park)
end
