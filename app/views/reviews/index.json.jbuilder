json.array! @reviews do |review|
  json.title    review.title
  json.content  review.content
  json.point    review.point
  json.reviewer review.user.name
end