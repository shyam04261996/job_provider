module BxBlockServices

	class Service < ApplicationRecord
		self.table_name = :services
    	has_many :bookings, class_name: 'BxBlockBooking::Booking', foreign_key: 'service_id'
	end
end