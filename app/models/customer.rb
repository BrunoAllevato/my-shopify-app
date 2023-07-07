class Customer < ApplicationRecord
  has_many :purchases
  has_many :coupons, through: :purchases

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
end
