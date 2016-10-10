# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!({name: "Laura Smith",username:"laurmith", password:"lsPrfv", image_url: "j5ztl7flo583isotukyg", title: "Founder, Instagram"})
User.create!({name: "David Parrott", username:"davrott", password:"kBW7CS", image_url: "wk95n67gqxsumhujyhbm", title: "PM at Soundcloud"})
User.create!({name: "Peter Cline", username:"peterer", password:"sports", image_url: "wip0pwaobkgj92zkmgur", title: "Dev"})
User.create!({name: "Anthony Little", username:"alittle", password:"7bgQVT", image_url: "hszse0wnmqc3ljkb7wdf"})
User.create!({name: "Denise Chalmers", username:"chalise", password:"svgoLN", image_url: "y6ydes4ifpuvaa02upyz", title: "Social Media Specialist"})
User.create!({name: "James Sieber", username:"jamesoro", password:"wildflowe", image_url: "yq1cd0dovyrwzrpdmmjp", title: "iOS Developer"})
User.create!({name: "Kevin Wilson", username:"wlsnkvn", password:"Lg0LTV", image_url: "bzmjwsjgtnqtzmpta2az"})
User.create!({name: "Jonathan Battaglia", username:"joglia", password:"uIbIQm", image_url: "gxcokxm7wnn3zif234xj"})
User.create!({name: "Cheryl Atkins", username:"atkeryl", password:"ugyDku", image_url: "qopb4pzy3f0zbrmyohwx", title: "Product Quest"})
User.create!({name: "Chris Ealey", username:"chraley", password:"Y1TR3L", image_url: "wxmhoumhvbxnp6wrjwsr", title: "UI Designer, Slack"})
User.create!({name: "Frank Harrison", username:"frankison", password:"Y1TR3L", image_url: "lpljnqpo7w6ptkqsscwb", title: "Product Manager"})
User.create!({name: "June Thomas", username:"jthomas", password:"Y1TR3L", image_url: "fk1wjznjri8r1fszt5x7", title: "Full Stack Developer"})
User.create!({name: "Mary Tolbert", username:"tolberry", password:"Y1TR3L", image_url: "ag8u7d6dh0mpbv3psnr9", title: "SEM Lead"})
User.create!({name: "Alex Spaeth", username:"alexth", password:"Y1TR3L", image_url: "nxuiton66ly88tvug4jc", title: "UX Designer"})
User.create!({name: "Peter Newman", username:"newmeter", password:"Y1TR3L", image_url: "fcutxsqoqnwadp6jq2mt", title: "Database Manager"})
User.create!({name: "Tara Fletcher", username:"fletra", password:"Y1TR3L", image_url: "kuvhsotu3v25xpsd7ey0", title: "UX Designer"})
User.create!({name: "Robert Glover", username:"gobert", password:"Y1TR3L", image_url: "kt0jrwprefkkz4mg60l4", title: "Marketing Lead"})
User.create!({name: "Willis Rowe", username:"rowio", password:"Y1TR3L", image_url: "az3y8qwlvpt3glhhs2cp", title: "UX Designer"})
User.create!({name: "Christina Jones",username:"chrijones", password:"Y1TR3L", image_url: "m5asgerb5l7vd3gvyx5l", title: "Product Manager"})
User.create!({name: "Rose Kendrick", username:"kendose", password:"Y1TR3L", image_url: "eevxu7ipvovgenxlf11y", title: "UX Designer"})
User.create!({name: "Joe Young", username:"joeyoung", password:"Y1TR3L", image_url: "jbsusczj8vx6owgdzae9", title: "Tech Recruiter"})
User.create!({name: "Charles McCurry",username:"mccurrs", password:"Y1TR3L", image_url: "fznbr451fppy2l4cfctr", title: "Backend Developer"})
User.create!({name: "Lauren Peters",username:"lapeters", password:"Y1TR3L", image_url: "cnczvsgrnp2cferbltwa", title: "UX Designer"})
User.create!({name: "David Hammnd", username:"damond", password:"Y1TR3L", image_url: "c7fm3q3dnejfkx5jfrfc", title: "Frontend Developer"})
User.create!({name: "Ava Fisher", username:"fisherus", password:"Y1TR3L", image_url: "jpmaiwwg5q92j2xormz7", title: "UI Designer"})
User.create!({name: "Mia Rosenberg",username:"minburg", password:"Y1TR3L", image_url: "ybibawwnhrixi0slxfzk", title: "UX Engineer"})
User.create!({name: "Clayton Wagner",username:"clayner", password:"Y1TR3L", image_url: "z9gbtlua5edw9mbj1qb9", title: "DB Engineer"})
User.create!({name: "Karen Woods",username:"woodsren", password:"Y1TR3L", image_url: "muzhtjs0ekxy5iaem3o6", title: "Comp Sci Student"})
User.create!({name: "Randy Reeve",username:"randeve", password:"Y1TR3L", image_url: "miarspxtvm2uv0hhnbz7", title: "UX Designer"})
User.create!({name: "Margie Griffin",username:"griffinus", password:"Y1TR3L", image_url: "zc3ep21bfxyxgalmyomz", title: "Fullstack Developer"})



Product.create!({name: "Carrd", description: "Simple, responsive, one-page sites for pretty much anything.",
   hunter_id: 12 ,image_url: "w4fsuzmvln8ulkeerpbs", product_url: "https://carrd.co/"})
Product.create!({name: "Ventusky", description: "Real-time weather mapping", hunter_id: 11 ,image_url: "zieweeozfwzdqrqmj2ie", product_url: "https://www.ventusky.com/" })
Product.create!({name: "Privacy.com", description: "Get a new virtual card for every transaction",
 hunter_id: 22, image_url: "p3tivxdznom7kq0t1pcs", product_url: "https://privacy.com/" })
Product.create!({name: "Foundbite", description: "Explore the sounds of the world",
 hunter_id: 15, image_url: "cntceaft6xzzbuxdii8p", product_url: "https://foundbite.co/"})
Product.create!({name: "Truebill", description: "Find your paid subscriptions and cancel with 1-click",
   hunter_id: 29,  image_url: "iljnzfaers2cecbhxo8i", product_url: "https://www.truebill.com/" })
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
  Product.create!({name: "Card Sorting: Designing Usable Categories",
    description: "The card sorting method for understanding ideas and content",
    hunter_id: 2 , image_url: "ht5vfbw8qssw4tnbjp7r", product_url: "http://rosenfeldmedia.com/books/card-sorting/" })
Product.create!({name: "Journaly", description: "Journal app for Mac to capture everything you care about",
  hunter_id: 26, image_url: "cfgwxrxmkrimctunvj23", product_url: "http://emberify.com/journaly/" })


Discussion.create!({body: "I love the fact that you don't even have to register/login to start playing around!", author_id: 23 ,product_id: 1})
Discussion.create!({body: "So basically it feels like an advanced alternative to about.me. I do love the simplicity, design and overall UX. Everything is precisely clear and simple. I do believe there is still much room for improvement. Great job, keepit up!", author_id: 29,product_id: 1})
Discussion.create!({body: "Love it - took 5 min to make a beautiful site", author_id: 13 ,product_id: 1})
Discussion.create!({body: "this is sick.", author_id: 2 ,product_id: 1})
Discussion.create!({body: "looks promising", author_id: 7 ,product_id: 1})
Discussion.create!({body: "Thats awesome ! Reminds me of what About.me was when they started.. Thanks for sharing", author_id: 11, product_id: 1})
Discussion.create!({body: "Wow. This is super amazing! Do you have plans to open its API?", author_id: 11 , product_id: 2})
Discussion.create!({body: "I used to love this too... what is everyone switching to now that they're shutting it down?", author_id: 12 , product_id: 2})
Discussion.create!({body: "Great! Just interested in how you have obtained all these weather data?", author_id: 17 , product_id: 2})
Discussion.create!({body: "Looks really great, but the energy impact of the website grew in seconds enormously on my MacBook. Memory issue?", author_id: 22, product_id: 2})
Discussion.create!({body: "Only available in the US at the moment but I really want to try it", author_id: 30 , product_id: 3});
Discussion.create!({body: "That's the kind of products that make you smile 5 seconds after landing in the homepage. Few words, 1 illustration and boom: you feel a pain going away. Great job Boling.", author_id: 10 , product_id: 3})
Discussion.create!({body: "Great execution. Just curious though, is there way to track the transaction to the original credit card or is it some sort o encrypted?", author_id: 14 , product_id: 3})
Discussion.create!({body: "Haha this product can stop gym membership slavery! Love it.", author_id: 28, product_id: 3})
Discussion.create!({body: "Signed up but disappointed that, much like all services that tie into bank account, only the large corporate banks are supported. :(", author_id: 13 , product_id: 3})
Discussion.create!({body: "One of those things I've wanted forever. Especially for services that lock you into a \"yearly agreement\" without you knowing, but bill you monthly. Looking at you Adobe.", author_id: 18 , product_id: 3})
Discussion.create!({body: "I really like the idea behind the app, and I believe the way you have done it is a really interesting approach.

I enjoy seeing the map and having a bit of context (especially with the photography as well). Navigating the map is a little odd (it took me a few tries to fully understand how the foundbite icon works on the map).

I think a different search functionality will be nice in the future. But admittedly, I think your exploration functionality is a nice differentiator and to me it makes perfect sense to launch with it, instead of with a \"traditional\" tag + search box approach.

Occasionally, when I navigate back ({browser back button), a sound from a previous location keeps playing, with the new sound being \"overlaid\", which gets pretty messy. (happening in Safari on OSX)

Overall, I'm pretty excited for this to grow and immediately signed up to be notified when the iOS version comes out. Best of luck!", author_id: 12 , product_id: 4})
Discussion.create!({body: "A tool for anyone. If you've got subscriptions with recurring payments, Truebill will help you manage and cancel them. I don't see a reason why people won't love this! Sign up and save money.", author_id: 29 ,product_id: 5})
Discussion.create!({body: "Such a time relevant and helpful tool full of value. My only feedback so far is duplicate data based on adding a credit card that is also affiliated with a bank account, so now it looks like I have multiple accounts with all of my subscriptions. Other than that, super intuitive and very useful. Thanks for your work on this!", author_id: 12 ,product_id: 5})
Discussion.create!({body: "Love it, except i can only use it with PayPal... any idea on when you might introduce more UK Banks? i might just swap to Barclays!", author_id: 17,product_id: 5})
Discussion.create!({body: "Love the team behind this.", author_id: 15,product_id: 5})
Discussion.create!({body: "Signed up, easy integration to my online accounts. Found one subscription I wasn't aware that was still running and got it cancelled immediately. :)", author_id: 27,product_id: 5})
Discussion.create!({body: "Just saved me $85/month from a sub I couldn't figure out how to cancel. Local utility provider so I'm not even sure how you guys pulled if off, but this is fantastic.!", author_id: 24,product_id: 5})
Discussion.create!({body: "Ohhh, what a great find! I really need this!", author_id: 6,product_id: 5})
Discussion.create!({body: "This was cool but didn't work", author_id: 14,product_id: 5})
Discussion.create!({body: "Just now trying to import photos from iMac using their mac tool. Error on every photo. Seems something broken :-(", author_id: 26, product_id: 6 })
Discussion.create!({body: "I've pretty much traded everything privacy related to Google in exchange for the convenience of GPhotos and GNow. Glad to see Apple catching up on some of these things but in GPhotos I trust.", author_id: 3, product_id:6 })
Discussion.create!({body: "anyone know if photos can be organized manually? I am big on folders for each trip / experience / event. Having a hard time moving to a UI that just shows a dump of photos chronologically.", author_id: 19, product_id:6 })
Discussion.create!({body: "Is there a storage limit? Wasn't apparent in the TNW article.", author_id: 2, product_id: 6})
Discussion.create!({body: "I've used Carbonite to backup my photos for years. For about $60/year, I get peace of mind. I'll give Google Photos a try but privacy is definitely a concern for me.", author_id: 5, product_id: 7})
Discussion.create!({body: "So easy on my eyes!", author_id: 3 , product_id: 8})
Discussion.create!({body: "Interesting direction from Jelly, \"injecting\" itself with a long-standing habit: searching on Google.

If this really takes off, it's hard not to see Google incorporating more social signals like this. That said, Google+ never really took off.", author_id: 23, product_id: 7})
Discussion.create!({body:"This is literally something that I've been waiting on for quite some time now. Photos is by far the most useful photo storage I've ever used. Being able to type in a query and for it to find an image you were looking for is super useful, and mind blowing at the same time.", product_id: 7, author_id: 9})
Discussion.create!({body: "Love that Jelly is not also a Chrome extension!", author_id: 14, product_id: 8})
Discussion.create!({body: "I am not sure if i get it - but the browser extention does not what it shows in the mock up right?", author_id: 6, product_id: 8})
Discussion.create!({body: "Works for me", author_id:16 , product_id: 8})
Discussion.create!({body: "Really looking forward to see what comes out of this. We are doing techhelp service company here in Finland and it's always nice to see how others approach this issue :) Good luck!", author_id: 11 , product_id: 9})
Discussion.create!({body: "Is the button device linked to a 'find my device' tool, for when my parents lose/misplace it?", author_id: 20 , product_id: 9})
Discussion.create!({body: "Kinda brilliant guys, if you can get them in the hands of moms everywhere! Not sure about the price point though. IMHO it may just get more adoption as a tool you can buy wrapped at any computer shop or best buy and costs $15/30 per press and go from there. Just a thought though I'm sure you guys will nail it. Great concept.", author_id: 13, product_id: 9})
Discussion.create!({body: "Nice gift, good looks guys!", author_id: 19, product_id: 9})
Discussion.create!({body: "This is going to be a hot gift for parents and grandparents without a doubt", author_id: 18, product_id: 9})
Discussion.create!({body: "This is a time saver! It is already bookmarked in my toolbox!", author_id: 17 ,product_id:10})
Discussion.create!({body: "Great tool to bypass the signups!", author_id: 5 ,product_id:10})
Discussion.create!({body: "This is cool! Is there any sort of check that prevents someone from entering a valid combination?", author_id: 22,product_id:10})
Discussion.create!({body: "I used to work in a web design agency and it was sometimes a pain to test the payment gateways of ecommerce sites we were building. This little tool takes care of that for you!", author_id: 19 ,product_id:10})
Discussion.create!({body: "Very dangerous app", author_id:11 ,product_id:10})
Discussion.create!({body: "wowww sounds good", author_id:28 ,product_id:10})
Discussion.create!({body: "Looks good, and good luck with it.", author_id: 17, product_id: 11})
Discussion.create!({body: "This is fantastic resource. Great work putting it all together and saving your visitors hours of searches to find these.", author_id: 6, product_id: 11})
Discussion.create!({body: "Saving to my \"Full Stack Resources\" collection - thanks :)", author_id: 6, product_id: 11})
Discussion.create!({body: "NICE!", author_id: 19, product_id: 11})
Discussion.create!({body: "Hello. Markdown doesn't work and i have to copy the link to visit a demo.", author_id: 21, product_id: 11})
Discussion.create!({body: "Is an international version planned ?" , author_id:6, product_id:12 })
Discussion.create!({body: "Looks like interesting idea! More details please." , author_id:9, product_id: 12})
Discussion.create!({body: "Looks great! Will try on this week." , author_id:12, product_id: 13})
Discussion.create!({body: "Cool, I can't wait to try this out!" , author_id:15, product_id: 14})
Discussion.create!({body: "Skeleton has been my go-to minimal css framework for nearly every project for years. But I agree, it is aging and hasn't been updated since Dec 2014. On the other hand, it's more or less rock solid. I think Wing could replace Skeleton as my default new project css framework, but only if you do keep it updated and keep up with PRs. Unfortunately, the only way to prove that is to diligently keep up with it and push out new releases every few months. So, keep it up! I starred the project along with almost 300 others, so we'll be watching!" , author_id:19, product_id: 13})
Discussion.create!({body: "This looks really promising, indeed. Can't wait to give it a try. To give an even better idea of the potential, it would be nice to have more full-featured examples (perhaps mini sites created with Wing).

I'll be keeping an eye on it, along with many others - as it seems ;)" , author_id:10, product_id: 14})
Discussion.create!({body: "This looks clean and awesome. Well done!" , author_id:28, product_id: 14})
Discussion.create!({body: "Is the fullscreen menu on there site part of Wing?" , author_id:11, product_id: 14})
Discussion.create!({body: "Sent my location. Spot on! I am definitely not in a hip location Will try again tomorrow when on the road. Hehe! Thanks for building this!", author_id:13 , product_id: 15})
Discussion.create!({body: "Great Bot! It worked surprisingly good for my location (Hamburg, Germany) :D All the locations are for bearded flannel shirt people :P", author_id: 14, product_id: 15})
Discussion.create!({body: "Haha! Seems like there is no hipster cafe in my town :D But I love the idea, especially because I travel a lot - and I'm coffee lover!", author_id: 15, product_id: 15})
Discussion.create!({body: "Sent my location. Spot on! I am definitely not in a hip location. Will try again tomorrow when on the road. Hehe! Thanks for building this!", author_id: 19, product_id: 15})
Discussion.create!({body: "Going to pick up a cupcake on the way home. Thanks Mica.", author_id: 20, product_id: 15})
Discussion.create!({body: "Mica told me to go to Dolores Park and Blue Bottle. That's not hip. That's mainstream. #basic", author_id: 22, product_id: 15})
Discussion.create!({body: "Nice work :) Woah, I discovered hispter places in São Paulo hehe - btw... how do you find places? Is it possible for uses to contribute?", author_id: 2, product_id: 15})
Discussion.create!({body: "I absolutely love this concept. As it's built on Chromium can I assume that the forked code is available somewhere? I'm sure I'm not alone in wanting to inspect the source to confirm no gremlins have crept in there and it's a recent fork for security purposes.", author_id: 14 , product_id:16 })
Discussion.create!({body: "I've been using the ghost browser from yesterday and its pretty impressive. I've ditched the Google Chrome browser for the ghost browser. This browser is basically \"google chrome\" on steroids. If you are a tech professional / social media manager (or) developer, this browser is a must have for you.

In my opinion, this looks like a great alternative to chrome. Since it was built on the 'Chrome' base, all the chrome apps and extensions are working fine in this browser.", author_id: 16 , product_id: 16})
Discussion.create!({body: "Granted, I've only been using the browser for about 10 minutes, but it's blazing fast. I don't even need to be signed into multiple social profiles, but I might make this my default browser if this speed keeps up.", author_id: 4 , product_id:16 })
Discussion.create!({body: "I do this with the People menu in Chrome. I setup a different Chrome profile for each group of social accounts. Then I can have them all open at the same time. What is the benefit of this?", author_id: 8, product_id:16 })
Discussion.create!({body: "This is a really nice simple idea, especially the colour coding for each cookie jar.

Just signed up for the beta - look forward to taking it for a spin", author_id: 19, product_id:16 })
Discussion.create!({body: "Use cases sounds like a browser I need. Anxiously waiting for beta invite! :)", author_id: 28, product_id:16 })
Discussion.create!({body: "Love that branding. I'd love to see a short video about it." , author_id: 23,product_id: 17})
Discussion.create!({body:"Feels tumblr/giphy-like in its branding." , author_id: 29,product_id: 17})
Discussion.create!({body:"Does this have Google Calendar integration?" , author_id: 13,product_id: 17})
Discussion.create!({body:"Would love to try but too reliant on the gCal ecosystem." , author_id: 3,product_id: 17})
Discussion.create!({body:"you can use it with your cool friends instead of work!" , author_id:16 ,product_id: 17})
Discussion.create!({body: "Congrats on the launch. I'm gonna share this with everybody I know who has kids.", author_id: 2 , product_id: 18})
Discussion.create!({body: "I like this idea! I think it's specific of a niche to potentially gain a lot of popularity with parents. Just have to nail distribution (as with every business). Great potential world of mouth effects though.", author_id: 14, product_id: 18})
Discussion.create!({body: "This looks amazing!", author_id: 19 , product_id: 18})
Discussion.create!({body: "I can't wait to add my tips into Winnie. Have kid, will travel. There's so many hidden gems that people deserve to discover.", author_id: 15, product_id: 18})
Discussion.create!({body: "always wanted something like that. red tricycle has never managed to keep me happy.", author_id: 25, product_id: 18})
Discussion.create!({body: "so why this over using the trainline app or similar?", author_id: 4 , product_id: 19})
Discussion.create!({body: "TICKEY is a mobile ticketing app for Android and iPhone that allows you to pay fares for public transport – buses, trams, trolleys, metro/underground in your town.

Your phone recognizes the bus once you enter it and checks if you have ticket. With one click you pay the fare and enjoy the ride.

TICKEY saves you time and gives you the possibility to rate the ride, driver or conductor.

It gives huge amount of data about the customers and the rides to the municipalities and public transport authorities and is free to integrate. They can also send news to the passengers(changed line or something else).

We have to buy the tickets from the transport authorities with commission and sell them to the customers at the real price.

TICKEY is eco friendly, new technology, convenient, zero integration cost and it connects the passengers with the municipalities and public transport authorities.", author_id: 30, product_id: 19})
Discussion.create!({body: "Any email sign up link for Android?", author_id:13 , product_id: 20})
Discussion.create!({body: "Something like this will really help me find the moments and people I'm happier around.", author_id: 27 , product_id: 20})
Discussion.create!({body: "I always wanted to write a daily journal entry but never had the time. This solves that problem.", author_id: 29 , product_id: 20})
Discussion.create!({body: "This is a little big brother data science to me.", author_id: 30, product_id: 20})
Discussion.create!({body: "Very cool app. Finds all kinds of hidden Data and connections between your photos and locations that you may not have realized.", author_id: 11 , product_id: 20})
Discussion.create!({body: "Really impressive! Would love to download the app immediately. Good luck to the team behind this awesome thing! Waiting to unveil the story of my life that writes itself. :-)", author_id: 20, product_id: 20})
Discussion.create!({body: "Gives me the feels of entering a time machine. The last time I felt these feels was when I downloaded Path years ago. I'm a pretty religious Swarm user and I can see how Fabric may replace the space in my life that Swarm currently occupies. I have very few apps on my phone, but this one might be a keeper.", author_id: 5, product_id: 20})
Discussion.create!({body: "looks interesting. not a big fan of the color code though.", author_id:21 , product_id: 20})
Discussion.create!({body: "This is just a copy of \"HeyDay\". Just another copycat.", author_id: 22 , product_id: 20})
Discussion.create!({body: "I love their tagline: \" The story of your life that writes itself.\"

It works in the background and journals my daily locations (I think using FourSquare's database) and overlays photos, instagram / fb feed as well as colocations with my friends.

The current product is interesting, the real fun will happen when I can re-live the past through the lens of time, location or people I was with. Pretty neat.", author_id: 4, product_id: 20})
Discussion.create!({body: "Love this - such a great idea to aggregate all the information out there.", author_id:11 , product_id: 21})
Discussion.create!({body: "I can get the same information from google (curated by popularity/usefulness) in just two clicks as opposed to 4 clicks on bleuberry.", author_id:21 , product_id: 21})
Discussion.create!({body: "NYC data is seriously lacking. But like the concept.", author_id:19 , product_id: 21})
Discussion.create!({body: "I will never be able to spell this correctly.", author_id: 20, product_id: 21})
Discussion.create!({body: "FlightBot can answer various questions around aviation. For example you can get area maps as well as information about delays at specific airports or even ask about your food options nearby. Your personal aviation assistant that is with you 24/7 and around the globe.", author_id: 7, product_id: 22})
Discussion.create!({body: "I love the background engagement feature! That is a big idea. We have it on websites, why not on apps? I'd be highlighting that concept more.", author_id: 22 , product_id: 23})
Discussion.create!({body: "Nice hunt, looks cool. If I make an onboarding, is it fully native?", author_id: 2 , product_id: 23})
Discussion.create!({body: "great product! Onboarding editor is really awesome!", author_id: 12, product_id: 23})
Discussion.create!({body: "From your site: \"Address users’ short attention span\".....thats me. I like this detail.", author_id: 13, product_id: 23})
Discussion.create!({body: "Medium is becoming a more and more important platform with readers looking for solid longform content. I've been involved since the beginning and have really seen it grow. Nice tool to help build on the process am looking forward to trying it out. I haven't had time to write full length articles for a while but I comment heavily about 2000 words a day on the site. This has definite use value for me.", author_id: 3 , product_id: 24})
Discussion.create!({body: "It's really interesting to see a lot of desktop apps popping up that are built with Electron and not natively :)", author_id: 15, product_id: 24})
Discussion.create!({body: "nice app. but \"distracted in the browser\"? medium is possibly the most minimalist interface I've seen on a site.", author_id: 12, product_id: 24})
Discussion.create!({body: "Nice start! Love to see draft.js in use outside of FB.", author_id: 25, product_id: 24})
Discussion.create!({body: "Waiting for the windows version. Sure will help to be more active writer in medium", author_id: 17, product_id: 24})
Discussion.create!({body: "No access to saved drafts?", author_id: 20, product_id: 24})
Discussion.create!({body: "I was not inclined to buy a smartwatch b/c I found the design elements pretty lackluster. Given YOUR platform, I now want to buy one!! The fact that you can get so many sleek and artistic designs for the watch enhance not only its look, but it's versatility! I love this idea! Way to go!", author_id: 2 , product_id: 25})
Discussion.create!({body: "Wow some beautiful watch faces here. Kinda makes me wish I was still using Android, I'm currently using an Android Wear Smartwatch but linked with Android Wear for iPhone.", author_id:  14, product_id: 25})
Discussion.create!({body: "Nice watches, and website I'm sure. But I only have a Pebble Time :(", author_id: 23 , product_id: 25})
Discussion.create!({body: "Gorgeous. What would you as the founders (or anyone else) suggest as the ideal Android watch right now (or the most comparable to Apple Watch)?", author_id: 10 , product_id: 25})
Discussion.create!({body: "Is there any chance of getting Facer on my Android wear connected to me iPhone?", author_id:  25, product_id: 25})
Discussion.create!({body: "Easily the best android watch face market place out there", author_id: 12 , product_id: 25})
Discussion.create!({body: "Had one of these last night. Felt good & fresh right away!", author_id: 21 ,product_id: 26})
Discussion.create!({body: "I've been an early adopter of these. They taste good and the combined cognitive boost of caffeine + L-theanine makes these really incredible. You chew these then you get the buzz of coffee without the hard crash and with more focus!", author_id: 11,product_id: 26})
Discussion.create!({body: "Huge fan of the product... it's replaced daily \"fuel\" intake for a number of people in our office.", author_id: 19 ,product_id: 26})
Discussion.create!({body: "Was waiting for these to get out of their early-backer state. Glad to see them around as a product! Excited to give them a shot. :)", author_id: 10 ,product_id: 26})
Discussion.create!({body: "Been using GO CUBES for a while. I'm not going to lie, the taste isn't 'my cup of tea', but I find it much more enjoyable than a cup of coffee in the morning. I backed the indiegogo twice, that's how much of a fan I am. I feel a lot more focused and energetic. Happy to see it finally launched!", author_id: 29,product_id: 26})
Discussion.create!({body: "You guys should make this into a physical book. I would buy it for sure.", author_id: 2, product_id: 27})
Discussion.create!({body: "Great tactics, would love some way to sort by ROI", author_id: 2, product_id: 27})
Discussion.create!({body: "Love having the small cards directly on the site. Nicely done!", author_id: 28, product_id: 27})
Discussion.create!({body: "I think adding real case studies and examples will be a great insight and could maybe help readers make a decision on testing the hack or not.", author_id: 23, product_id: 27})
Discussion.create!({body: "I was checking this out yesterday. Looks very cool but what I really wanted to see was a demo of ladder.io! I've been lurking for months but don't really want to set up a call. A quick example video would go a long way to showing what exactly ladder can do.", author_id: 13, product_id: 27})
Discussion.create!({body: "Seems very useful and well put together. Just signed up to dig a bit deeper :)", author_id: 12, product_id: 27})
Discussion.create!({body: "I love how in depth and practical this playbook is. The design is great as well. I'm using this as a resource!", author_id: 15, product_id: 27})
Discussion.create!({body: "*Huge* and well thought out resource, great work.", author_id: 11, product_id: 27})
Discussion.create!({body: "It would be really interesting to see some meta data, ie what are the top 5 most viewed, or potentially an up/down vote (no login required) per hack, so that we can instantly curate the best stuff to look at.", author_id: 17, product_id: 27})
Discussion.create!({body: "Bring back Umano!!!", author_id: 22, product_id: 28})
Discussion.create!({body: "And it doesn't require you to sign up! (altough you'll miss out on some social features)", author_id: 15, product_id: 28})
Discussion.create!({body: "I was thinking yesterday, I wish something like this existed. Right on time!", author_id: 25, product_id: 28})
Discussion.create!({body: "This looks great, can't wait to check it out!", author_id: 30, product_id: 28})
Discussion.create!({body: "Looks great and something I was looking for in a while. Will see how it compares to other apps which offer that feature !", author_id: 29, product_id: 28})
Discussion.create!({body: "Wow read by real humans. I wasn't expecting that!", author_id: 4, product_id: 28})
Discussion.create!({body: "It seems like a great addition for office where you have weak wifi specially for meetings in the conference room." , author_id: 4, product_id: 29})
Discussion.create!({body: "Beautiful, chic, and classy. The plume fulfills my vanity and provides a great convenience. Great job" , author_id: 20 , product_id: 29})
Discussion.create!({body: "I love this so much!" , author_id: 11, product_id: 29})
Discussion.create!({body: "The product design is great, but the website is even cooler." , author_id: 11, product_id: 29})
Discussion.create!({body: "I'm digging the minimal design." , author_id: 16 , product_id: 29})
Discussion.create!({body: "My one and only question: Can my WiFi Network name be an emoji?" , author_id: 18 , product_id: 29})
Discussion.create!({body: "I've looked for something like this before. If I can give a totally subjective opinion, I'm not a huge fan of the green and red color scheme. I would definitely use this if I had more control over the theme.", author_id: 11 ,product_id: 30})
Discussion.create!({body: "well, that will wake you right up ...", author_id: 2 ,product_id: 30})
Discussion.create!({body: "Been using the beta for some time now. Excellent way to put our mortality in perspective with our daily 'boredom'.", author_id: 24 ,product_id: 30})
Discussion.create!({body: "Wow... sobering. I installed this a couple hours ago, forgot about it, then got a huge unexpected slap in the face when I opened a new tab. All this time, I thought I was going to live forever!", author_id: 1,product_id: 30})
Discussion.create!({body: "This is cool! Maybe instead of counting all Sundays from Unix 0, start counting from birth year?", author_id: 8,product_id: 30})
Discussion.create!({body: "This is outrageous but that is what makes it amazing. And an too scared to look at those green colors. I would use this if I know an lacking behind but am not so....", author_id: 18,product_id: 30})
Discussion.create!({body: "The concept is original and great! Something you do not see every day in fitness apps", product_id: 31, author_id: 13 })
Discussion.create!({body: "I'm an early Sweatcoin user in the UK. The app runs in the background and it works amazingly well & does not drain the battery, unlike Moves. All you need to do is occasionally check your Sweatcoin balance and what is in the Sweatcoin store. Over the year I bought things like Shoes, Tea subscription, chocolate all using Sweatcoins", product_id: 31, author_id: 15 })
Discussion.create!({body: "This is an awesome app for tracking walking and steps across a day. Impressive!", product_id: 31, author_id: 23 })
Discussion.create!({body: "Okay, this might MAKE the app \"You can also donate your Sweatcoins to some of our amazing partnering charities, making for an easy way to help others around the world.\" Walkathon 24/7.", product_id: 31, author_id: 19 })
Discussion.create!({body: "Guys, this is awesome! How did you come up with such an idea?", product_id: 31, author_id: 2 })
Discussion.create!({body: "The app that will know where you are and when you are there. Don't commit a crime without turning off location services. Very interesting app though! :)", product_id: 31, author_id: 18 })
Discussion.create!({body: "Had never heard about card sorting before. Very interesting", author_id: 4, product_id: 32 })
Discussion.create!({body: "looks promising. But will be more cool if it can track some things automatically from my phone & mac & add it in my day's journal.", author_id: 3, product_id: 33 })
Discussion.create!({body: "Seems pretty useful currently on google keep and trello (they more or less do their job)", author_id: 22 , product_id: 33 })
Discussion.create!({body: "Great! I used some of your other apps on Android and enthuse in Quantified Self as well. I like the idea of daily personal surveys. I hope this comes to Android/web soon so I can use it on my platforms!", author_id: 19, product_id: 33 })
Discussion.create!({body: "So is it like my personal diary? How is the self-tracking like?", author_id: 14, product_id: 33 })
Discussion.create!({body: "How is this similar and different to Day One?", author_id: 29, product_id: 32 })





Discussion.create!({body: "Sweet looking product!", author_id: 2, product_id: 3})
Discussion.create!({body: "Sweet looking product!", author_id: 15, product_id: 14})
Discussion.create!({body: "Sweet looking product!", author_id: 1, product_id: 4})
Discussion.create!({body: "Sweet looking product!", author_id: 18, product_id: 5})
Discussion.create!({body: "Sweet looking product!", author_id: 3, product_id: 6})
Discussion.create!({body: "Sweet looking product!", author_id: 27, product_id: 7})
Discussion.create!({body: "Sweet looking product!", author_id: 19, product_id: 11})
Discussion.create!({body: "Sweet looking product!", author_id: 16, product_id: 13})
Discussion.create!({body: "Sweet looking product!", author_id: 17, product_id: 24})
Discussion.create!({body: "Sweet looking product!", author_id: 20, product_id: 22})
Discussion.create!({body: "Sweet looking product!", author_id: 11, product_id: 11})
Discussion.create!({body: "so great", author_id: 14, product_id: 29})
Discussion.create!({body: "love it", author_id: 21, product_id: 18})
Discussion.create!({body: "my best friend loves it", author_id: 11, product_id: 21})
Discussion.create!({body: "pretty good", author_id: 22, product_id: 17})
Discussion.create!({body: "hate it", author_id: 15, product_id: 15})
