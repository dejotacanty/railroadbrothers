class Category < ApplicationRecord
  belongs_to :product
  has_many :units
end
