class Salon < ApplicationRecord

  has_many :cars
  has_many :orders

  has_one :picture, as: :imageable, class_name: 'Image', dependent: :destroy
  accepts_nested_attributes_for :picture

  paginates_per 6
end
