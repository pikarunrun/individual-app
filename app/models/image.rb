class Image < ApplicationRecord
  belongs_to :post, optional: true

  mount_uploader :image, ImageUploader
end
