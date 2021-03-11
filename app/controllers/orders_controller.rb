class OrdersController < ApplicationController

    def index
        @amount = Order.last.total
        @stripe_amount = (@amount).to_i
    end
    
    def show
        @user = User.all
        @amount = Order.last.total
        @stripe_amount = (@amount).to_i

    end


    def create
        @cart_item = CartItem.find_by(cart_id: current_user.id)
         @order = Order.create(cart_item_id: @cart_item, user_id: current_user.id, total: $total)
            @cart = CartItem.find_by(cart_id: current_user.id)
            @carts = CartItem.all

            
            @carts.each do |item|
                if current_user.id == @cart.cart_id
                item.destroy
                end 
            end
        
        # Before the rescue, at the beginning of the method
            @amount = Order.last.total
            @stripe_amount = (@amount).to_i
            begin
            customer = Stripe::Customer.create({
            email: params[:stripeEmail],
            source: params[:stripeToken],
            })
            charge = Stripe::Charge.create({
            customer: customer.id,
            amount: @stripe_amount,
            description: "Achat d'un produit",
            currency: 'eur',
            })
            redirect_to orders_path

            rescue Stripe::CardError => e
            flash[:error] = e.message
            redirect_to order_path(current_user.id)
            end
        # After the rescue, if the payment succeeded
    end

end
