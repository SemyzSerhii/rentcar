class Salon < ApplicationRecord
  has_many :cars
  has_many :orders
end
