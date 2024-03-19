class AddStartAndEndTimeToBookings < ActiveRecord::Migration[6.1]
  def change
    change_table :bookings do |t|
      t.rename :star_date, :start_date
      t.datetime :start_time
      t.datetime :end_time
      t.string :status
    end
  end
end
