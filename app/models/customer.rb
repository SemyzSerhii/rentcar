class Customer < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :picture, as: :imageable, class_name: 'Image', dependent: :destroy
  accepts_nested_attributes_for :picture

  paginates_per 6

  attr_accessor :crop_x, :crop_y, :crop_w, :crop_h
  after_update :crop_avatar

  def crop_avatar
    picture.recreate_versions! if crop_x.present?
  end
end
