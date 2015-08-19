class JobsController < ApplicationController
	def index
		@jobs = Job.all
		
	end

	def show
		@jobs = Job.find(params[:id])
		@user = User.new
	end

	def edit
	  @admin = current_user
	  @signed_in = current_user
	  @job = Job.find(params[:id])
 	end

   def update
   	@signed_in = current_user
   	@job = Job.find(params[:id])
    if @job.update_attributes(job_params)
      flash[:success] = "Profile updated"
      redirect_to admin_path(@signed_in)
    else
      render 'edit'
    end
  end

	def create
	end

	private

    def job_params
      params.require(:job).permit(:name, :description)
	end
end
