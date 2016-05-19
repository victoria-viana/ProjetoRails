class SessionsController < ApplicationController
  def new
  end

  def create
     coach = Coach.find_by(email: params[:session][:email].downcase)
    if coach && coach.authenticate(params[:session][:password])
      # Log the user in and redirect to the user's show page.
      log_in coach
      redirect_to coach
    else
      # Create an error message.
      flash.now[:danger] = 'Invalid email/password combination'


    render 'new'
  end

  def destroy
end
end
