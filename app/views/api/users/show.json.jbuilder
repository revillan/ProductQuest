json.partial! "api/users/user", user: @user
json.products @user.products, partial: 'api/products/product', as: :product
# debugger

@user.products.each do |product|
  # debugger
  product.comments do |comment|
    json.set! comment.id do
      json.body comment.body
      json.author User.find_by_id(comment.author_id)
    end
  end
end
