# app/models/account_block/account.rb

require 'phonelib'

module AccountBlock
 class Account < ApplicationRecord
    self.table_name = :accounts
    has_secure_password

    before_validation :parse_full_phone_number
    # before_create :generate_api_key

    validates :email, presence: true
    validates :password, presence: true
    private

    def parse_full_phone_number
      phone = Phonelib.parse(full_phone_number)
      self.full_phone_number = phone.sanitized
      self.country_code      = phone.country_code
      self.phone_number      = phone.raw_national
    end

    def valid_phone_number
      unless Phonelib.valid?(full_phone_number)
        errors.add(:full_phone_number, "Invalid or Unrecognized Phone Number")
      end
    end

    # def generate_api_key
    #   self.api_key = SecureRandom.hex(10)
    # end
 end
end
