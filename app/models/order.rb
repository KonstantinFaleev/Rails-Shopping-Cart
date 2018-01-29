class Order < ApplicationRecord
  has_many :line_items, dependent: :destroy

  validates :name, :comment, :phone, :email, presence: true
end
