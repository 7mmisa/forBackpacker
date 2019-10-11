class Image < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :post

  validates :image, presence: true
end

# belongs_to :post, optional: true