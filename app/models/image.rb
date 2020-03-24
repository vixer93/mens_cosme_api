class Image < ApplicationRecord
  belongs_to :product

  validates :name, presence: true

  mount_uploader :name, ImageUploader
end
