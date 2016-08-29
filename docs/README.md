# ProductQuest

[Heroku link][heroku] 

[heroku]: http://www.herokuapp.com

## Minimum Viable Product:
ProductQuest is a webapplication inspired by ProductHunt built using Ruby
and React/Redux. By the end of Week 9, this app will, at a minimum,
satisfy the following criteria with smooth, bug-free navigation,
adequate seed data and sufficient CSS styling:

- New account creation, login, and guest/demo login
- A production README, replacing this README
- Hosting on Heroku
- Product
- Profile Pages
- Product Discussion
- Search (for both users and products)

## Design Docs:
* [View Wireframes][wireframes]
* [React Components][components]
* [API endpoints][api-endpoints]
* [DB schema][schema]
* [Redux Structure][redux-structure]
* [Sample State][sample-state]

[wireframes]: wireframes
[components]: component-heirarchy.md
[redux-structure]: redux-structure.md
[sample-state]: sample-state.md
[api-endpoints]: api-endpoints.md
[schema]: schema.md

## Implementation Timeline

### Phase 1: Backend setup and Front End User Auth (2 days)

Objective: Functioning rails project with front-end auth

-[ ] New Rails Project
-[ ] 'User' model/migration
-[ ] Backend Auth
-[ ] 'StaticPages' controller and root view
-[ ] Webpack, React/Redux modules
-[ ] Redux cycle for frontend Auth
-[ ] User sign-in/up components
-[ ] style sign-in/up components
-[ ] seed users

### Phase 2: Products Model, API, and components (2 days)

Objective: Products can be added and viewed

-[ ] Product model
-[ ] Seed database with small amount of test data
-[ ] Create, Read API for products (ProductsController)
-[ ] JBuilder views for products
-[ ] Product Components: NewProductForm, ProductDetail, ProductIndex
-[ ] Style product Components
-[ ] Seed products

### Phase 3: Users and Profile Pages (2 days)

Objective: Users have profile pages that can be viewed

-[ ] User model
-[ ] Seed database with small amount of test data
-[ ] Create, Read, Update API for users (UsersController)
-[ ] JBuilder views for profile Pages
-[ ] User components: UserDetail, Tabs
-[ ] Style User components
-[ ] Seed users

### Phase 4: Discussion (1.5 days)

Objective: Comments can be added to Product Pages

-[ ] Discussion model
-[ ] Seed database with small amount of test data
-[ ] Create, Read API for Discussion (DiscussionsController)
-[ ] Extend Product page JBuilder view to include Discussion
-[ ] Discussion Components: DiscussionContainer, DiscussionItems, NewCommentContainer, NewCommentForm
-[ ] Style Discussion Components
-[ ] Seed discussion data

### Phase 5: Search (1.5 days)

Objective: Both products and users are searchable.

-[ ] Add Autosearch to JBuilder Header view
-[ ] Search Components: Autosearch, AutoSearchResults


### Bonus Features:

-[ ] Infinite Scroll for Products Index
-[ ] Collections
-[ ] Upvotes
