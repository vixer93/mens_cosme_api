json.array! @products do |product|
  json.id       product.id
  json.image    product.images.first.name.url
  json.name     product.name
  json.brand    product.brand
  json.price    product.price
  json.point    product.point
  json.category product.category.name
  json.favorite product.is_favorite?(current_user)
end