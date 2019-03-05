class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by(user_name: params[:session][:user_name])
  	if user && user.authenticate(params[:session][:password])
      if user.active?
        log_in user
        if params[:session][:remember_me] == '1' 
          remember(user)
        end
        redirect_back_or user
      else
        message = "Account not activated. "
        message += "Check your email for the activation link."
        flash[:warning] = message
        redirect_to root_url
      end
  		
  	else
  		flash.now[:danger] = "Invalid user name or password"
  		render 'new'
  	end	
  end

  def destroy
  	log_out if logged_in?
  	redirect_to root_url
  end
end
