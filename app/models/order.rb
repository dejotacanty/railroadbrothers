class Order < ApplicationRecord
  # belongs_to :customer
  # has_many :units
  belongs_to :customers through :orders 
  belongs_to :discounts
  belongs_to :products
  belongs_to :strengths through :products

end
