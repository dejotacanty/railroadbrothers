class Product < ApplicationRecord
  has_many :categories
  has_many :units, through: :categories
end
