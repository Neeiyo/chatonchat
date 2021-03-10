class Order < ApplicationRecord

  has_many :items
  belongs_to :cart_items
  belongs_to :users

end
