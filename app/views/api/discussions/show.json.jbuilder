p @comment
json.set! @comment.id do
  json.body @comment.body
  json.product_id @comment.product_id
  json.author User.find_by_id(@comment.author_id)
end
