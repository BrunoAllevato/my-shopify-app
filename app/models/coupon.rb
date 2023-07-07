class Coupon < ApplicationRecord
  has_many :purchases
  has_many :customers, through: :purchases

  validates :code, presence: true, uniqueness: true
  validates :discount_percentage, presence: true, numericality: { greater_than: 0, less_than_or_equal_to: 100 }
end
