json.id    @product.id
json.images do
  json.array! @product.images do |image|
    json.image image.name.url
  end
end
json.name  @product.name
json.brand @product.brand
json.price @product.price
json.point @product.point