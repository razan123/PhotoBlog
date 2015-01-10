# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

 categories=['Sports','Scenery','Potrait', 'Others']
 categories.each do |category|
 	unless Category.where(name: category).first
 		Category.create(name: category)
 	end

 end