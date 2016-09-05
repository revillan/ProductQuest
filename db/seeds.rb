# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!({username:"jsmith", password:"lsPrfv", image_url: "assets/profile"})
User.create!({username:"elgarant", password:"kBW7CS", image_url: "assets/profile"})
User.create!({username:"ksong", password:"sports", image_url: "assets/profile"})
User.create!({username:"johnk", password:"7bgQVT", image_url: "assets/profile"})
User.create!({username:"kyseb", password:"svgoLN", image_url: "assets/profile"})
User.create!({username:"mattbar", password:"wildflowe", image_url: "assets/profile"})
User.create!({username:"mikek", password:"Lg0LTV", image_url: "assets/profile"})
User.create!({username:"sv_zee", password:"uIbIQm", image_url: "assets/profile"})
User.create!({username:"cbarrett", password:"ugyDku", image_url: "assets/profile"})
User.create!({username:"hachoi", password:"Y1TR3L", image_url: "assets/profile"})

Product.create!({name: "Slack", description: "a messaging app" , hunter_id: 4,
  image_url: "assets/slack-logo", product_url: "https://slack.com/"})
Product.create!({name: "Evernote", description: "a notetaking app" , hunter_id: 6,
  image_url: "assets/slack-logo", product_url: "https://evernote.com/"})
Product.create!({name: "Evernote", description: "a notetaking app" , hunter_id: 2,
  image_url: "assets/slack-logo", product_url: "https://evernote.com/"})
Product.create!({name: "Evernote", description: "a notetaking app" , hunter_id: 5,
  image_url: "assets/slack-logo", product_url: "https://evernote.com/"})
Product.create!({name: "Evernote", description: "a notetaking app" , hunter_id: 6,
  image_url: "assets/slack-logo", product_url: "https://evernote.com/"})
