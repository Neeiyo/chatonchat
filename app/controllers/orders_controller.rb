class OrdersController < ApplicationController

    def show
        @user = User.all
    end


    def create
        @cart_item = CartItem.find_by(cart_id: current_user.id).id
        
        Order.create(cart_item_id: @cart_item, user_id: current_user.id)

        redirect_to order_path(current_user.id)
    end
end
