json.partial! "api/users/user", user: @user
json.products @user.products, partial: 'api/products/product', as: :product
