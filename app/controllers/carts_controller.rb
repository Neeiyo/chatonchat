class CartsController < ApplicationController



  def show
    if current_user
    @cart = Cart.find(params[:id])
    else
      redirect_to root_path
    end
  end

  def create
 
    
end
end