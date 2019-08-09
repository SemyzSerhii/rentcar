class Car < ApplicationRecord
  extend Enumerize

  belongs_to :salon
  has_many :orders

  has_one :picture, as: :imageable, class_name: 'Image', dependent: :destroy
  accepts_nested_attributes_for :picture


  enumerize :fuel_type, in: %i[diesel gasoline electricity gas hybrid]
  enumerize :age, in: 1990..2020
end
