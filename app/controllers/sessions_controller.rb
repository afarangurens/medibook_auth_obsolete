class SessionsController < ApplicationController
    def new
    end
  
    def create
      @cuenta = Cuentum.find_by(username: params[:session][:username])
      if @cuenta && @cuenta.authenticate(params[:session][:password])
        # Log the user in and send a JSON response
        session[:cuenta_id] = @cuenta.id
        render json: { message: 'Logged in successfully' }
      else
        # Invalid credentials, send an error JSON response
        render json: { error: 'Invalid username or password' }, status: :unprocessable_entity
      end
    end
  
    def destroy
      session[:user_id] = nil
      render json: { message: 'Logged out successfully' }
    end
  end
  