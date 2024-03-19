# app/models/bx_block_providers/provider.rb
module BxBlockProvider
  class Provider < ApplicationRecord
  	    self.table_name = :providers
        has_many :bookings, class_name: 'BxBlockBooking::Booking', foreign_key: 'provider_id'
  end
end
