class Image < ApplicationRecord
  belongs_to :product, optional: true

  validates :name, presence: true

  mount_uploader :name, ImageUploader
end
