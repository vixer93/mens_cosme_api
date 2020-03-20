class Product < ApplicationRecord
  has_many :images, dependent: :delete_all
  belongs_to :user

  validates :name, :brand, :price, presence: true
end
