ActiveAdmin.register AccountBlock::Account, as: "Account" do
 actions :all
 permit_params :first_name, :last_name, :email, :full_phone_number, :password, :activated 

 	index do
	    selectable_column
	    id_column
	    column :first_name
	    column :last_name
	    column :email
	    column :full_phone_number
	    actions
	end

	 filter :email
	 filter :full_name

	 form do |f|
	    f.inputs do
	      f.input :first_name
	      f.input :last_name
	      f.input :email
	      f.input :full_phone_number
	      f.input :password

	    end
	    f.actions
	 end
end
