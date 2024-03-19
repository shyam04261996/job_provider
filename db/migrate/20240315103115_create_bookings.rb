class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.string :full_name
      t.text :description
      t.decimal :price
      t.string :star_date
      t.string :end_date
      t.string :service_id
      t.string :provider_id
      t.string :account_id
      t.string :full_phone_number
      t.string :company_name

      t.timestamps
    end
  end
end
