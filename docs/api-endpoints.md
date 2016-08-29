# API Endpoints

## HTML API

### Root

- `GET /` -loads React web app

## JSON API

### Users
- `GET /api/users`
  - users search: `text` param
- `GET /api/users/:id`
- `POST /api/users`
- `PATCH /api/users`

### Session
- `POST /api/session`
- `DELETE /api/session`
- `GET /api/session`

### Products
- `GET /api/products`
  - product search: `text` param
  - accepts pagination parameters (if I get there)
- `POST /api/products`
- `GET /api/products/:id`
- `PATCH /api/products/:id`

### Discussion
- `POST api/discussion`
- `GET api/discussion`
