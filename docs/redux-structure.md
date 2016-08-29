## Auth Cycles

### Session API Request Actions

* `sign-up`
  0. invoked from `SignupForm` `onSubmit`
  0. `POST /api/users` is called
  0. `receiveCurrentUser` is set as the success callback.
* `logIn`
 0. invoked from `LoginForm` `onSubmit`
 0. `POST /api/session` is called.
 0. `receiveCurrentUser` is set as the callback.
* `logOut`
 0. invoked from `Navbar` `onClick`
 0. `DELETE /api/session` is called.
 0. `removeCurrentUser` is set as the success callback.
* `requestCurrentUser`
 0. invoked from `App` in `didMount`
 0. `GET /api/session` is called.
 0. `receiveCurrentUser` is set as the success callback.

### Session API Response Actions

* `receiveCurrentUser`
  0. invoked from an API callback
  0. the `SessionReducer` stores `currentUser` in the application's state.
* `removeCurrentUser`
  0. invoked from an API callback
  0. the `SessionReducer` removes `currentUser` from the application's state.

## User Cycles

### User Request

* `requestSingleUser`
  0. invoked from `userDetail` `onClick`
  0. `GET /api/users` is called with id param
  0. `receiveSingleUser` is set as success callback
* `requestAllUsers`
  0. invoked from `didMount`
  0. `GET /api/users` is called
  0. `receiveAllUsers` is set as success callback

### User Response

* `receiveAllUsers`
  0. invoked from an API callback
  0. `User` reducer updates `users` in the application state

* `receiveSingleUser`
  0. invoked from an API callback
  0. `User` reducer updates `User[id]` in application state

## Product Cycles

### Product Request

* `requestSingleProduct`
  0. invoked from `productDetail` `onClick`
  0. `GET /api/products` is called with id param
  0. `receiveSingleProduct` is set as success callback
* `requestAllProducts`
  0. invoked from `didMount`
  0. `GET /api/products` is called
  0. `receiveAllProducts` is set as success callback
* `createProduct`
  0. invoked from `newProductForm` `onSubmit`
  0. `POST /api/products` is called
  0. `receiveSingleProduct` is set as success callback

### Product Response

* `receiveAllProducts`
  0. invoked from an API callback
  0. `Product` reducer updates `products` in the application state

* `receiveSingleProduct`
  0. invoked from an API callback
  0. `Product` reducer updates `Product[id]` in application state

## Discussion Cycles

### Discussion Request

* `requestAllComments`
  0. invoked from `didMount`
  0. `GET /api/discussion` is called
  0. `receiveAllComments` is set as success callback
* `createComment`
  0. invoked from new comment button `onClick`
  0. `POST /api/discussion` is called
  0. `receiveSingleComment` is set as success callback

### Discussion Response

* `receiveAllComments`
  0. invoked from an API callback
  0. `Discussion` reducer updates `products` in the application state

## Search Suggestion Cycles

* `requestSearchSuggestions`
  0. invoked from `SearchBar` `onChange` when there is text
  0. `GET /api/users` is called with `text` param.
  0. `GET api/products` is called with `text` param.
  0. `receiveSearchSuggestions` is set as the success callback.

* `receiveSearchSuggestions`
  0. invoked from an API callback.
  0. The `SearchSuggestion` reducer updates `suggestions` in the application's state.

* `removeSearchSuggestions`
  0. invoked from `SearchBar` `onChange` when empty
  0. The `SearchSuggestion` reducer resets `suggestions` in the application's state.
