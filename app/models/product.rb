class Product < ApplicationRecord
  has_many :line_items
  has_many :orders, through: :line_items

  validates :name, :description, :picture, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :name, uniqueness: true
end
