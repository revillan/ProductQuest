json.partial! "api/users/user", user: @user
# json.products @user.products, partial: 'api/products/product', as: :product
# debugger
json.products do
  @user.products.each do |product|
    json.set! product.id do
      json.extract! product, :id, :name, :description, :image_url, :product_url, :hunter_id

      json.comments do
        product.comments.each do |comment|
          json.set! comment.id do
            json.body comment.body
            json.author comment.user
          end
        end
      end
    end
  end
end
