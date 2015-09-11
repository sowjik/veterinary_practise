# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

doctor1 = Doctor.create! :name => "Bob", :address => "line 1", :city => "city1", :state => "satate1", :zip => 12345, :school => "njh", :years_in_practice => 5
doctor2 = Doctor.create! :name => "Susan", :address => "line2", :city => "city2", :state => "satate2", :zip => 12325, :school => "njh", :years_in_practice => 4