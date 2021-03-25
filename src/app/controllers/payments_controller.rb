class PaymentsController < ApplicationController
    skip_before_action :verify_authenticity_token
    def success
    end

    def webhook
        payment_id = params[:data][:object][:payment_intent]
        payment = Stripe::PaymentIntent.retrieve(payment_id)
        listing_id = payment.metadata.listing_id
        user_id = payment.metadata.user_id
        puts "listing_id:"
        p listing_id
        puts "user_id:"
        p user_id

        status 200
        # listing = Listing.find(listing_id.to_i)
        # listing.sold = true
        # listing.save

        # # # update available quantity
        # # listing - Listing.find(listing_id.to_i)
        # # # listing.quantity_available -= params with quantity in it
        # # listing.save
    end
end
