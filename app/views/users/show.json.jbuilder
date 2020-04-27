json.set! :products do
  json.array! current_user.products.order("id DESC").limit(10) do |product|
    json.id       product.id
    json.image    product.images.first.name.url
    json.name     product.name
    json.brand    product.brand
    json.price    product.price
    json.point    product.point
    json.category product.category.name
    json.favorite product.is_favorite?(current_user)
  end
end

json.set! :reviews do
  json.array! current_user.reviews.order("id DESC").limit(10) do |review|
    json.set! :product do
      json.id       review.product.id
      json.image    review.product.images.first.name.url
      json.name     review.product.name
      json.brand    review.product.brand
      json.price    review.product.price
      json.point    review.product.point
      json.category review.product.category.name
      json.favorite review.product.is_favorite?(current_user)
    end
    json.id       review.id
    json.title    review.title
    json.content  review.content
    json.point    review.point
    json.reviewer review.user.name
  end
end

json.set! :favorites do
  json.array! current_user.favorites.order("id DESC").limit(10) do |favorite|
    json.set! :product do
      json.id       favorite.product.id
      json.image    favorite.product.images.first.name.url
      json.name     favorite.product.name
      json.brand    favorite.product.brand
      json.price    favorite.product.price
      json.point    favorite.product.point
      json.category favorite.product.category.name
    end
  end
end