class UsersController < ApplicationController
	def new
	end

	def create
		@user = User.new(user_params)
	  	if @user.save
	  		@userjob = UserJob.new(user_id: @user.id, job_id: @user.user_job_id)
	  		@userjob.save
	  		flash[:success] = "Thanks for applying!"
	  		redirect_to root_path
	  	else
	  		redirect_to root_path
	  	end
	end

	private

    def user_params
      params.require(:user).permit(:name, :user_job_id, :email, :address, :phone, :resume, :cover_letter)
	end
end
