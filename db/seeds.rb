# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!({username:"jsmith", password:"lsPrfv", image_url: "j5ztl7flo583isotukyg", title: "Founder, Instagram"})
User.create!({username:"elgarant", password:"kBW7CS", image_url: "wk95n67gqxsumhujyhbm", title: "PM at Soundcloud"})
User.create!({username:"ksong", password:"sports", image_url: "wip0pwaobkgj92zkmgur", title: "Dev"})
User.create!({username:"johnk", password:"7bgQVT", image_url: "hszse0wnmqc3ljkb7wdf"})
User.create!({username:"kyseb", password:"svgoLN", image_url: "y6ydes4ifpuvaa02upyz", title: "Social Media Specialist"})
User.create!({username:"mattbar", password:"wildflowe", image_url: "yq1cd0dovyrwzrpdmmjp", title: "iOS Developer"})
User.create!({username:"mikek", password:"Lg0LTV", image_url: "bzmjwsjgtnqtzmpta2az"})
User.create!({username:"sv_zee", password:"uIbIQm", image_url: "gxcokxm7wnn3zif234xj"})
User.create!({username:"cbarrett", password:"ugyDku", image_url: "qopb4pzy3f0zbrmyohwx", title: "Product Quest"})
User.create!({username:"hacahoi", password:"Y1TR3L", image_url: "wxmhoumhvbxnp6wrjwsr", title: "UX Designer"})
User.create!({username:"hachsdfoi", password:"Y1TR3L", image_url: "lpljnqpo7w6ptkqsscwb", title: "UX Designer"})
User.create!({username:"hasadchoi", password:"Y1TR3L", image_url: "fk1wjznjri8r1fszt5x7", title: "UX Designer"})
User.create!({username:"df", password:"Y1TR3L", image_url: "ag8u7d6dh0mpbv3psnr9", title: "UX Designer"})
User.create!({username:"hactwehoi", password:"Y1TR3L", image_url: "nxuiton66ly88tvug4jc", title: "UX Designer"})
User.create!({username:"hacwethoi", password:"Y1TR3L", image_url: "fcutxsqoqnwadp6jq2mt", title: "UX Designer"})
User.create!({username:"dfhacdhoi", password:"Y1TR3L", image_url: "kuvhsotu3v25xpsd7ey0", title: "UX Designer"})
User.create!({username:"hacsadfhoi", password:"Y1TR3L", image_url: "kt0jrwprefkkz4mg60l4", title: "UX Designer"})
User.create!({username:"hacdhoi", password:"Y1TR3L", image_url: "az3y8qwlvpt3glhhs2cp", title: "UX Designer"})
User.create!({username:"hactewhoi", password:"Y1TR3L", image_url: "m5asgerb5l7vd3gvyx5l", title: "UX Designer"})
User.create!({username:"hacsdfhsdoi", password:"Y1TR3L", image_url: "eevxu7ipvovgenxlf11y", title: "UX Designer"})
User.create!({username:"hachq23oi", password:"Y1TR3L", image_url: "jbsusczj8vx6owgdzae9", title: "UX Designer"})
User.create!({username:"hachwwoi", password:"Y1TR3L", image_url: "fznbr451fppy2l4cfctr", title: "UX Designer"})
User.create!({username:"hacswdfhoi", password:"Y1TR3L", image_url: "cnczvsgrnp2cferbltwa", title: "UX Designer"})
User.create!({username:"43", password:"Y1TR3L", image_url: "c7fm3q3dnejfkx5jfrfc", title: "UX Designer"})
User.create!({username:"hachafoi", password:"Y1TR3L", image_url: "jpmaiwwg5q92j2xormz7", title: "UX Designer"})
User.create!({username:"hacy4sdfhoi", password:"Y1TR3L", image_url: "ybibawwnhrixi0slxfzk", title: "UX Designer"})
User.create!({username:"hachewroi", password:"Y1TR3L", image_url: "z9gbtlua5edw9mbj1qb9", title: "UX Designer"})
User.create!({username:"hach4wt4oi", password:"Y1TR3L", image_url: "muzhtjs0ekxy5iaem3o6", title: "UX Designer"})
User.create!({username:"ffff", password:"Y1TR3L", image_url: "miarspxtvm2uv0hhnbz7", title: "UX Designer"})
User.create!({username:"hachsdsfoihoi", password:"Y1TR3L", image_url: "zc3ep21bfxyxgalmyomz", title: "UX Designer"})



Product.create!({name: "Card Sorting: Designing Usable Categories",
   description: "The card sorting method for understanding ideas and content",
    hunter_id: 2 , image_url: "ht5vfbw8qssw4tnbjp7r", product_url: "http://rosenfeldmedia.com/books/card-sorting/" })
Product.create!({name: "Carrd", description: "Simple, responsive, one-page sites for pretty much anything.",
   hunter_id: 12 ,image_url: "w4fsuzmvln8ulkeerpbs", product_url: "https://carrd.co/"})
Product.create!({name: "Sunrise Meet", description: "The fastest way to schedule a one-to-one meeting",
   hunter_id: 11 ,image_url: "eofa6ftylbs0y9endpwf", product_url: "http://sunrise.am/meet/" })
Product.create!({name: "Foundbite", description: "Explore the sounds of the world",
 hunter_id: 15, image_url: "cntceaft6xzzbuxdii8p", product_url: "https://foundbite.co/"})
Product.create!({name: "Truebill", description: "Find your paid subscriptions and cancel with 1-click",
   hunter_id: 29,  image_url: "iljnzfaers2cecbhxo8i", product_url: "https://www.truebill.com/" })
Product.create!({name: "Privacy.com", description: "Get a new virtual card for every transaction",
   hunter_id: 22, image_url: "p3tivxdznom7kq0t1pcs", product_url: "https://privacy.com/" })
Product.create!({name: "Google Photos", description: "Automatic backup and unlimited storage for all your photos",
   hunter_id: 3, image_url: "pa24p1qfjdndhbsegcit", product_url: "https://photos.google.com/"})
Product.create!({name: "GitHub Night Mode", description: "A Chrome extension to experience GitHub in night mode.",
   hunter_id: 13, image_url: "hixtdwtnqxxbxqddpsya", product_url: "http://www.amitmerchant.com/github-night-mode/"})
Product.create!({name: "Jelly Chrome Extension", description: "Get answers from people as you browser & search the web",
   hunter_id: 23, image_url: "h1b148inaix0aihrama1", product_url: "https://askjelly.com/" })
Product.create!({name: "Techmate", description: "Tech help and support at the push of a button",
  hunter_id: 26, image_url: "qmadji4bmmcefbcfwjcg", product_url: "https://jointechmate.com/"})
Product.create!({name: "Dummy Card Generator", description: "Generate fake credit card numbers for eCommerce testing",
  hunter_id: 19 , image_url: "jlnqbemdandwkfae0gv1", product_url: "http://saijogeorge.com/dummy-credit-card-generator/"})
Product.create!({name: "jQuery Cards", description: "Curated repository of over 1000 quality jQuery plugins",
  hunter_id: 5, image_url: "d6ahlonpjnubd65bwk1y", product_url: "http://jquerycards.com/"})
Product.create!({name: "PetCloud", description: "Trusted pet care in homes near you",
   hunter_id: 21, image_url: "uzp3xozzc5jthdwxfcax", product_url: "https://www.petcloud.com.au/"})
Product.create!({name: "Medable - The platform for healthcare", description: "HIPAA Compliance, Research",
   hunter_id: 24, image_url: "abrlu2yb0g7m93oztyvl", product_url: "https://www.medable.com/" })
Product.create!({name: "Wing", description: "A dead-simple, responsive, CSS framework",
  hunter_id: 18, image_url: "yn9fbmt2bburxlxnetco", product_url: "http://usewing.ml/" })
Product.create!({name: "Mica, the Hipster Cat Bot on Telegram", description: "Find hip places worldwide",
   hunter_id: 1, image_url: "hxtlqca6sk61en67z6t8", product_url: "https://telegram.me/hipstercatbot" })
Product.create!({name: "Ghost Browser", description: "The Productivity Browser for Technology Professionals",
  hunter_id: 16, image_url: "flmoddoax4khhdjgyxdx", product_url: "http://ghostbrowser.com/"})
Product.create!({name: "KYTE", description: "A cool social planner. Happy Kyting!",
   hunter_id: 6, image_url: "tef4fkbuar9oqz0gtdyj", product_url: "http://kyte.cool/"})
Product.create!({name: "Winnie", description: "Great activities and destinations for families",
  hunter_id: 9 , image_url: "nqsaibktn0c31kwfbzdt", product_url: "https://winnielabs.com/"})
Product.create!({name: "Tickey", description: "Buy tickets for public transport with your smartphone",
   hunter_id: 30, image_url: "jwntrc8vzkwmv1bejwdw", product_url: "http://tickey.me/" })
Product.create!({name: "Fabric", description: "The story of your life that writes itself.",
  hunter_id: 4, image_url: "zxp1ycsjvsb4oeyqaxmu", product_url: "http://fabric.me/"})
Product.create!({name: "The Bleuberry Project", description: "The largest interactive database for the on-demand economy",
   hunter_id: 14, image_url: "pc3extx7rkpzbtuedrf6", product_url: "http://bleuberry.io/" })
Product.create!({name: "FlightBot", description: "A Messenger bot designed by pilots for pilots",
  hunter_id: 7, image_url: "nlzi2nrg9tejiheb6ksb", product_url: "https://www.messenger.com/login.php?next=https%3A%2F%2Fwww.messenger.com%2Ft%2Fflightbot%2F"})
Product.create!({name: "Elasticode", description: "Build, deploy & personalize native mobile experience",
  hunter_id: 18, image_url: "aavcwdj8fverimfgm6tn", product_url: "http://elasticode.com/"})
Product.create!({name: "sMedium", description: "A desktop app for writing Medium stories",
  hunter_id: 20, image_url: "luzkg6riljdskyhje8vp", product_url: "https://gavindinubilo.github.io/smore/"})
Product.create!({name: "Facer 2.0", description: "The most complete smartwatch customization platform ever",
  hunter_id: 10, image_url: "lyogp0o40bbhige89aia", product_url: "https://www.facer.io/"})
Product.create!({name: "GO CUBES Chewable Coffee", description: "Keep your coffee in your pocket instead of a cup",
  hunter_id: 11, image_url: "bhrkzmw5t3qintxwm9b3", product_url: "https://nootrobox.com/go-cubes" })
Product.create!({name: "Ladder Growth Playbook", description: "450+ proven growth tactics from 2 yrs of testing",
  hunter_id: 25, image_url: "cm1oa8vkvi1vcemx3wyx", product_url: "https://ladder.io/playbook" })
Product.create!({name: "Meep", description: "Listen to your favorite news sites when you can't read them",
  hunter_id: 12, image_url: "oqoooennjcolztxmevb9", product_url: "http://www.meep.com/"})
Product.create!({name: "Plume", description: "Small pods that brings reliable WiFi to every room",
  hunter_id: 5, image_url: "pgxdplkszgnnlg7akccm", product_url: "https://www.plumewifi.com/"})
Product.create!({name: "The Last Sunday", description: "Chrome extension to tell how many days remain in your life",
  hunter_id: 17, image_url: "nr5oieenksgwhs1ngxbw", product_url: "https://chrome.google.com/webstore/detail/the-last-sunday-reminder/aiojhapcgfgmiacbbjfgedhlcchmpelh?hl=en-US&gl=IN"})
Product.create!({name: "Sweatcoin", description: "The app that pays you to get fit",
  hunter_id: 28, image_url: "igj0qh0ahscqkxpmwbhf", product_url: "https://sweatco.in/" })
Product.create!({name: "Journaly", description: "Journal app for Mac to capture everything you care about",
  hunter_id: 26, image_url: "cfgwxrxmkrimctunvj23", product_url: "http://emberify.com/journaly/" })


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
