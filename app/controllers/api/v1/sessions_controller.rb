module Api::V1
  class SessionsController < ApplicationController

    def create
      user = User.find_by(email: params[:session][:email].downcase)
      if user && user.authenticate(params[:session][:password])
        log_in user
        render json: user
      else  
        payload = {
          error: "Invalid email/password combination.",
          status: 400
        }      
        render json: payload, status: :bad_request
      end
    end


    
  end
end
