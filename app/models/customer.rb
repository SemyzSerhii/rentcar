class Customer < ApplicationRecord
  paginates_per 6

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :picture, as: :imageable, class_name: 'Image', dependent: :destroy
  accepts_nested_attributes_for :picture
end
