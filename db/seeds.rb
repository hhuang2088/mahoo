# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

cat = User.find_or_create_by(email: "cat@hat.com", password: "12345", password_confirmation: "12345")

cat.things.find_or_create_by(name: "Thing1", description: "Agent operating under Cat in the Hat")
cat.things.find_or_create_by(name: "Thing2", description: "Thing1's partner")
cat.things.find_or_create_by(name: "Thing3", description: "The one that you did not know was a Thing")

200.times do 
  cat.things.find_or_create_by(name: Forgery::Thing.thing_name, description: Forgery(:lorem_ipsum).words(10))
end