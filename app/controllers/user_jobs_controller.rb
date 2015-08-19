class UserJobsController < ApplicationController
	def create
		@user = User.new(user_job_params[:user_attributes])
		@userjob = UserJob.new(user_job_params)
	  	if @user.save & @userjob.save
	  		flash[:success] = "Thanks for applying!"
	  		redirect_to root_path
	  	else
	  		redirect_to root_path
	  	end
	end

	private

    def user_job_params
      params.require(:user).permit(:user_id, :job_id,  
      				user_attributes:[:id, :name, :email, :address, :phone, :resume, :cover_letter])
	end
end
