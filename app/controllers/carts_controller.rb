class CartsController < ApplicationController
  before_action :authenticate_user!


  def show
    @item = Item.all
    @cart = Cart.find_by(user_id: params[:id])
    if current_user.id == @cart.id
    else 
      redirect_to cart_path(current_user.id)
    end
  end

end