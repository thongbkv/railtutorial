class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by(email: params[:session][:email].downcase)
  	if user && user.authenticate(params[:session][:password])
  		# Log the user in and redirect to the user's show page.
  		log_in user
      remember user
      # byebug
  		redirect_to user
  	else
  		# create an error message
  		flash[:danger] = 'Invalid email/password combination'
  	render 'static_pages/home'
  end
  end

  def destroy
  	log_out if logged_in?
  	redirect_to root_url
  end
end
