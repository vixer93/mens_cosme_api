class Product < ApplicationRecord
  has_many :images,  dependent: :delete_all
  has_many :reviews, dependent: :delete_all
  belongs_to :user
  accepts_nested_attributes_for :images

  validates :name, :brand, :price, presence: true
end
