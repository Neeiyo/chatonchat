class CartItem < ApplicationRecord
  has_many :users
  has_many :carts
end
