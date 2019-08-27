class AvatarUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  storage :fog

  version :thumb do
    process :crop
  end

  version :tiny, from_version: :thumb do
    process resize_to_fill: [20, 20]
  end

  version :large do
    resize_to_limit(600, 600)
  end

  def crop
    if model.crop_x.present?
      resize_to_limit(600, 600)
      manipulate! do |img|
        x = model.crop_x.to_i
        y = model.crop_y.to_i
        w = model.crop_w.to_i
        h = model.crop_h.to_i
        img.crop(x, y, w, h)
      end
    end
  end
end
