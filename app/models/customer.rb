class Customer < ApplicationRecord
  mount_uploader :avatar, AvatarUploader

  attr_accessor :crop_x, :crop_y, :crop_w, :crop_h

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  paginates_per 6

  after_update :crop_avatar

  def crop_avatar
    avatar.recreate_versions! if crop_x.present?
  end
end
