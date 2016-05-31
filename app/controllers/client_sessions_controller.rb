class ClientSessionsController < ApplicationController
  def new
  end

  def create
     @client = Client.find_by(email: params[:client_session][:email].downcase)
    if client && client.authenticate(params[:client][:password])
      # Log the user in and redirect to the user's show page.
      log_in client
      redirect_to clients_path
    else
      # Create an error message.
      flash.now[:danger] = 'Invalid email/password combination'
    render 'new'
    end
  end

    def destroy
        log_out
        redirect_to root_path
    end
end
