# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!({username:"jsmith", password:"lsPrfv", image_url: "qivgdv3nnugtbfpjsi9x", title: "Founder, Instagram"})
User.create!({username:"elgarant", password:"kBW7CS", image_url: "qivgdv3nnugtbfpjsi9x", title: "PM at Soundcloud"})
User.create!({username:"ksong", password:"sports", image_url: "qivgdv3nnugtbfpjsi9x", title: "Dev"})
User.create!({username:"johnk", password:"7bgQVT", image_url: "qivgdv3nnugtbfpjsi9x"})
User.create!({username:"kyseb", password:"svgoLN", image_url: "qivgdv3nnugtbfpjsi9x", title: "Social Media Specialist"})
User.create!({username:"mattbar", password:"wildflowe", image_url: "qivgdv3nnugtbfpjsi9x", title: "iOS Developer"})
User.create!({username:"mikek", password:"Lg0LTV", image_url: "qivgdv3nnugtbfpjsi9x"})
User.create!({username:"sv_zee", password:"uIbIQm", image_url: "qivgdv3nnugtbfpjsi9x"})
User.create!({username:"cbarrett", password:"ugyDku", image_url: "qivgdv3nnugtbfpjsi9x", title: "Product Quest"})
User.create!({username:"hachoi", password:"Y1TR3L", image_url: "qivgdv3nnugtbfpjsi9x", title: "UX Designer"})

Product.create!({name: "Slack", description: "a messaging app" , hunter_id: 4,
  image_url: "vcbkjwsgq5xztftzqbrz", product_url: "https://slack.com/"})
Product.create!({name: "Evernote", description: "a notetaking app" , hunter_id: 6,
  image_url: "vcbkjwsgq5xztftzqbrz", product_url: "https://evernote.com/"})
Product.create!({name: "Evernote", description: "a notetaking app" , hunter_id: 2,
  image_url: "vcbkjwsgq5xztftzqbrz", product_url: "https://evernote.com/"})
Product.create!({name: "Evernote", description: "a notetaking app" , hunter_id: 5,
  image_url: "vcbkjwsgq5xztftzqbrz", product_url: "https://evernote.com/"})
Product.create!({name: "Evernote", description: "a notetaking app" , hunter_id: 6,
  image_url: "vcbkjwsgq5xztftzqbrz", product_url: "https://evernote.com/"})
Product.create!({name: "Evernote", description: "a notetaking app" , hunter_id: 2,
  image_url: "vcbkjwsgq5xztftzqbrz", product_url: "https://evernote.com/"})
Product.create!({name: "Evernote", description: "a notetaking app" , hunter_id: 2,
  image_url: "vcbkjwsgq5xztftzqbrz", product_url: "https://evernote.com/"})
Product.create!({name: "Evernote", description: "a notetaking app" , hunter_id: 1,
  image_url: "vcbkjwsgq5xztftzqbrz", product_url: "https://evernote.com/"})
Product.create!({name: "Evernote", description: "a notetaking app" , hunter_id: 1,
  image_url: "vcbkjwsgq5xztftzqbrz", product_url: "https://evernote.com/"})

Discussion.create!({body: "cool cool app", author_id: 2, product_id: 3})
Discussion.create!({body: "cool cool app", author_id: 2, product_id: 3})
Discussion.create!({body: "cool cool app", author_id: 1, product_id: 4})
Discussion.create!({body: "cool cool app", author_id: 1, product_id: 5})
Discussion.create!({body: "cool cool app", author_id: 3, product_id: 6})
Discussion.create!({body: "cool cool app", author_id: 3, product_id: 7})
Discussion.create!({body: "cool cool app", author_id: 4, product_id: 1})
Discussion.create!({body: "cool cool app", author_id: 4, product_id: 3})
Discussion.create!({body: "cool cool app", author_id: 5, product_id: 4})
Discussion.create!({body: "cool cool app", author_id: 5, product_id: 2})
Discussion.create!({body: "cool cool app", author_id: 6, product_id: 1})
