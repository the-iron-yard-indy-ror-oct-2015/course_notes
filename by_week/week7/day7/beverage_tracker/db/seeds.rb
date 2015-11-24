# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Drink.create!(:name => "Coffee", :quantity => 2, :date => Date.today)
Drink.create!(:name => "Red Bull", :quantity => 1, :date => 2.weeks.ago)
Drink.create!(:name => "KickStart", :quantity => 1, :date => 1.weeks.ago)
