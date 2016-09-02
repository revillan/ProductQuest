# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!({username:"jsmith", password:"lsPrfv"})
User.create!({username:"elgarant", password:"kBW7CS"})
User.create!({username:"ksong", password:"sports"})
User.create!({username:"johnk", password:"7bgQVT"})
User.create!({username:"kyseb", password:"svgoLN"})
User.create!({username:"mattbar", password:"wildflowe"})
User.create!({username:"mikek", password:"Lg0LTV"})
User.create!({username:"sv_zee", password:"uIbIQm"})
User.create!({username:"cbarrett", password:"ugyDku"})
User.create!({username:"hachoi", password:"Y1TR3L"})

Product.create!({name: "Slack", description: "a messaging app" , hunter_id: 4,
  image_url: "assets/images/slack-logo", product_url: "https://slack.com/"})
Product.create!({name: "Evernote", description: "a notetaking app" , hunter_id: 6,
  image_url: "assets/images/slack-logo", product_url: "https://evernote.com/"})
