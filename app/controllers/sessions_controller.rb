class SessionsController < ApplicationController
 	def new
		@signed_in = current_user
	end

	def create
		admin = Admin.find_by(email: params[:session][:email].downcase)
		if admin && admin.authenticate(params[:session][:password])
  			sign_in admin
  			redirect_back_or admin
  		else
  			flash.now[:error] = "Invalid email/password combination" # Not quite right!
    		render 'new'
    	end
	end

	def destroy
	    sign_out
	    redirect_to root_url
	end
end
