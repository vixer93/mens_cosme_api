class Review < ApplicationRecord
  belongs_to :user
  belongs_to :product

  validates :title, :content, :point, presence: true

  def self.calculate_average_point(product_id)
    reviews = Review.where(product_id: product_id)
    sum_of_point = reviews.sum(:point)
    size = reviews.count
    (sum_of_point / size.to_f).floor(1)
  end
end
