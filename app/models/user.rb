class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
        
  has_many :carts
  after_create :user_cart
  

  def user_cart
    @cart = Cart.create(user_id: self.id)
  end

end
