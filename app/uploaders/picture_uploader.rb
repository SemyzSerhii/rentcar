class PictureUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  storage :fog
end
