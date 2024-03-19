Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  namespace :account_block do
    resources :accounts, only: [:create, :show, :update, :destroy]
    post 'create_account', to: 'accounts#create_account'
    put 'update_account/:id', to: 'accounts#update_account' # Include ':id' placeholder for update
    get 'show_account/:id', to: 'accounts#show_account'     # Include ':id' placeholder for show
    delete 'destroy_account/:id', to: 'accounts#destroy_account' # Include ':id' placeholder for destroy
  end
  

  namespace :bx_block_login do 
    post 'create', to: 'logins#create'
    delete '/logout', to: 'logins#destroy'
  end
end
