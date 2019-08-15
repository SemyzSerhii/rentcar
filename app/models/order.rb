class Order < ApplicationRecord
  paginates_per 6

  belongs_to :car
  belongs_to :salon
  belongs_to :customer
end
