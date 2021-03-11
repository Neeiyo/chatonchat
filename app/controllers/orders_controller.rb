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

    def confirmation_email_send
        variable = Mailjet::Send.create(messages: [{
          'From'=> {
            'Email'=> 'louis.grandjean99@gmail.com',
            'Name'=> 'Louis'
          },
          'To'=> [
            {
              'Email'=> User.find(Order.last.user_id).email,
              'Name'=> User.find(Order.last.user_id).email
            }
          ],
          'Subject'=> 'Order confirmation',
          'TextPart'=> 'Order confirmation',
          'HTMLPart'=> "<section class='page-wrapper success-msg'>
          <div class='container'>
            <div class='row'>
              <div class='col-md-6 col-md-offset-3'>
                <div class='block text-center'>
                  <i class='tf-ion-android-checkmark-circle'></i>
                  <h2 class='text-center'>Hi #{User.find(Order.last.user_id).email} Thank you! For your payment</h2>
                  <p>Thank you! For your payment of #{Order.last.total} $</p>
                  <a href='shop.html' class='btn btn-main mt-20'>Continue Shopping</a>
                </div>
              </div>
            </div>
          </div>
        </section>",
          'CustomID' => 'AppGettingStartedTest'
        }]
        )
        p variable.attributes['Messages']
      #UserMailer.confirmation_email(User.find(Order.last.user_id)).deliver_now
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
            confirmation_email_send

            rescue Stripe::CardError => e
            flash[:error] = e.message
            redirect_to order_path(current_user.id)
            end
        # After the rescue, if the payment succeeded
    end

end
