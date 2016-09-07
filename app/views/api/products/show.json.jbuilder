json.partial! "api/products/product", product: @product
json.hunter_img @product.user.image_url
json.hunter @product.user.username
json.comments do
  @product.comments.each do |comment|
    json.set! comment.id do
      json.body comment.body
      json.author User.find_by_id(comment.author_id)
    end
  end
end
