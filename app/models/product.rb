class Product < ApplicationRecord

  belongs_to :categories
  belongs_to :strengths
  has_many :orders
  
end
