class Image < ApplicationRecord
  mount_uploader :url, PictureUploader

  belongs_to :imageable, polymorphic: true, optional: true
end
