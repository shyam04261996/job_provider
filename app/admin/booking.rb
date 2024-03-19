# app/admin/booking.rb
ActiveAdmin.register BxBlockBooking::Booking, as: "Booking" do

  permit_params :full_name, :description, :price, :start_date, :end_date, :start_time, :end_time,
                :service_id, :provider_id, :full_phone_number, 
                :company_name, :status

  index do
    selectable_column
    id_column
    column :full_name
    column :description
    column :price
    column :start_date
    column :end_date
    column :start_time
    column :end_time
    column :status
    column :full_phone_number
    column :company_name
    actions
  end

  filter :full_name
  filter :start_date
  filter :end_date

  form do |f|
    f.inputs "Booking Details" do
      f.input :full_name
      f.input :description, as: :text
      f.input :price
      f.input :start_date
      f.input :end_date
      f.input :start_time
      f.input :end_time
      f.input :status
      f.input :full_phone_number
      f.input :company_name
    end
    f.actions
  end

end
