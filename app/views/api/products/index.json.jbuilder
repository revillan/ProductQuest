@products.each do |product|
  json.set! product.id do
    json.partial! 'product', product: product
    json.hunter_img product.user.image_url
    json.hunter product.user.username
  end
end
