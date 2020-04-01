class Review < ApplicationRecord
  belongs_to :user
  belongs_to :product

  validates :title, :content, :point, presence: true
end
