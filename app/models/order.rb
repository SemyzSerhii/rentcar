class Order < ApplicationRecord

  belongs_to :car
  belongs_to :salon
  belongs_to :customer

  paginates_per 6
end
