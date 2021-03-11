class Order < ApplicationRecord

  has_many :cart_items
  belongs_to :user

  after_create :confirmation_email_send

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

end
