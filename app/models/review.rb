class Review < ApplicationRecord
  validates :title, :content, :point, presence: true
end
