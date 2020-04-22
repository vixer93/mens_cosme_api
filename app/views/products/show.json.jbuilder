json.set! :product do
  json.id       @product.id
  json.name     @product.name
  json.brand    @product.brand
  json.price    @product.price
  json.point    @product.point
  json.category @product.category.name
  json.favorite @product.is_favorite?(current_user)
  json.images do
    json.array! @product.images do |image|
      json.url image.name.url
    end
  end
end

json.set! :reviews do
  json.array! @product.reviews.order("id DESC").limit(2) do |review|
    json.id       review.id
    json.title    review.title
    json.content  review.content
    json.point    review.point
    json.reviewer review.user.name
  end
end