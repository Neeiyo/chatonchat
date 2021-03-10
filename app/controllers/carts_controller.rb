class CartsController < ApplicationController
  before_action :authenticate_user!


  def show
    @item = Item.all
    @carts = Cart.find_by(user_id: current_user.id)
    @cart = current_cart
    @cartitem = CartItem.all
    if current_user.id == @carts.id

    else 
      redirect_to cart_path(current_user.id)
    end
  end
  
 
  def update
    @cart = Cart.find_by(user_id: current_user.id)
    new_item = CartItem.create(cart_id: @cart.id, item_id: params[:id])
    redirect_to root_path
    
  end

  def destroy
    @user = current_user
    @item = Item.find_by(id: params[:id])
    @cart = Cart.find_by(user_id: current_user.id)
    @cart_item = CartItem.find_by(cart_id: @user.id, item_id: CartItem.find_by(cart_id: @user.id).item_id)
    @cart_item.destroy
    redirect_to cart_path(current_user.id)
  end

  

end