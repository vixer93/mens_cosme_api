class User < ApplicationRecord
  has_many :products
  has_many :reviews

  validates :name, :email, :uid, presence: true
end
