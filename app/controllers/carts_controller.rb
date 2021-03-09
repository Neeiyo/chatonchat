class CartsController < ApplicationController

  before_action :authenticate_user!, :user

  def show
    @user = User.find(params['id'])
  end

  def create
    if current_user == @user.id
      @cart = Cart.create(user_id: current_user.id)
    else
      redirect_to root_path
      flash[:danger]= "Bien essayé petit malin ! ;P"
  end
end