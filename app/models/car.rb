class Car < ApplicationRecord
  belongs_to :salon
  has_many :orders
end
