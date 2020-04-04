json.id    @product.id
json.name  @product.name
json.brand @product.brand
json.price @product.price
json.point @product.point
json.images do
  json.array! @product.images do |image|
    json.url image.name.url
  end
end
json.reviews do
  json.array! @product.reviews.reverse do |review|
    json.title review.title
    json.content review.content
    json.point review.point
    json.reviewer review.user.name
  end
end