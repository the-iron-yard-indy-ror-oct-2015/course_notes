# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'factory_girl_rails'

10.times do
  daycare = FactoryGirl.create(:daycare)
  4.times do
    room = FactoryGirl.create(:room)
    daycare.rooms << room
    10.times do
      child = FactoryGirl.create(:child)
      room.children << child
    end
  end
end
