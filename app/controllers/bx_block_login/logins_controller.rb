module BxBlockLogin
 class LoginsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def create
      user = AccountBlock::Account.find_by(email: params[:email])
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        render json: { message: 'Login successful', user: AccountBlock::AccountSerializer.new(user).as_json }, status: :ok
      else
        render json: { error: 'Invalid email/password combination' }, status: :unauthorized
      end
    end

    def destroy
      session[:user_id] = nil
      render json: { message: 'Logout successful' }, status: :ok
    end
 end
end
