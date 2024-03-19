# app/admin/services.rb

ActiveAdmin.register BxBlockServices::Service, as: "Service" do
  permit_params :name, :description, :price

  index do
    selectable_column
    id_column
    column :name
    column :description
    column :price
    actions
  end

  
 filter :name
 filter :description

  form do |f|
    f.inputs "Service Details" do
      f.input :name
      f.input :description, as: :text
      f.input :price
    end
    f.actions
  end
end
