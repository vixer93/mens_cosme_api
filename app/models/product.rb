class Product < ApplicationRecord
  has_many :images,   dependent: :delete_all
  has_many :reviews,  dependent: :delete_all
  has_one  :favorite, dependent: :delete
  belongs_to :user
  belongs_to :category
  accepts_nested_attributes_for :images

  validates :name, :brand, :price, presence: true

  def is_favorite?(current_user)
    return false unless current_user
    if Favorite.find_by(user_id: current_user.id, product_id: self.id)
      true
    else
      false
    end
  end
end
