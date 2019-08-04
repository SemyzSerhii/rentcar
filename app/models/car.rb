class Car < ApplicationRecord
  belongs_to :salon
  has_many :orders

  has_one :picture, as: :imageable, class_name: 'Image', dependent: :destroy
  accepts_nested_attributes_for :picture
end
