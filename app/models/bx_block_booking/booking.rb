# app/models/bx_block_booking/booking.rb
module BxBlockBooking
  class Booking < ApplicationRecord
    self.table_name = :bookings

    enum status: {assigned: 'assigned',un_assigned: 'un_assigned',progress: 'progress',complete: 'complete'}
    belongs_to :provider, class_name: 'BxBlockProvider::Provider', foreign_key: 'provider_id'
    belongs_to :service, class_name: 'BxBlockServices::Service', foreign_key: 'service_id'

  end
end
