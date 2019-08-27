class PictureUploader < CarrierWave::Uploader::Base

  storage :fog
end
