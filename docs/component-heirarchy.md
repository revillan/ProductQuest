## Component Hierarchy

**AuthFormContainer**
  - AuthForm

**NewProductContainer**
- NewProductForm

**HomeContainer**
  - Header
    - AutoSearch
      - AutoSearchResults

  - ProductIndex
    - ProductDetail

**ProductContainer**
  - ProductDetail
  - DiscussionContainer
    - DiscussionItems
      - UserDetail
    - NewCommentContainer
      -NewCommentForm


**UserContainer**
  - Header
    - AutoSearch
      - AutoSearchResults
  - UserDetail
  - ViewTable
    - Tabs (Made, Submitted)
      - ProductIndex
        - ProductItems


## Routes
| Path    | Component |
|---------|-----------|
|"/" | "HomeContainer"|
|"/:product_id" | "ProductContainer"|
|"/:user_id" | "UserContainer" |
|"/:user_id/made"| "UserContainer"|
|"/:user_id/submitted" | "UserContainer"|
|"/login" | "AuthFormContainer"|
|"/sign-up" | "AuthFormContainer"|
|"/add-product" | "NewProductContainer"|
|"/:user_id/collections" | "UserContainer"|
