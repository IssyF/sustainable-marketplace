class OrdersController < ApplicationController
  def create
    listing = Listing.find(params[:listing_id])
    order  = Order.create!(
      listing: listing,
      buyer: current_user.buyer,
      amount: listing.price,
      state: 'pending',
    )

    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: listing.title,
        images: [listing.photo.key],
        amount: listing.price_cents,
        currency: 'gbp',
        quantity: 1
      }],
      success_url: order_url(order),
      cancel_url: order_url(order)
    )

    order.update(checkout_session_id: session.id)
    redirect_to new_order_payment_path(order)
  end

  def show
    @order = current_user.buyer.orders.find(params[:id])
  end
end
