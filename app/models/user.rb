class User < ApplicationRecord
  has_many :products

  validates :name, :email, :uid, presence: true
end
