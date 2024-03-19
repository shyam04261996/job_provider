module AccountBlock
  class AccountSerializer < ActiveModel::Serializer
    attributes *[
               :id, 
               :first_name, 
               :last_name, 
               :full_phone_number, 
               :country_code, 
               :phone_number, 
               :email, 
               :activated, 
               :device_id, 
               :unique_auth_id, 
               :type,  
               :user_name, 
               :user_type, 
               :role_id, 
               :created_at, 
               :updated_at
              ]
  end
end
