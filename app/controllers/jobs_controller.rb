class JobsController < ApplicationController
	def index
		@jobs = Job.all
		@user = User.new
	end

	def show
	end

	def edit
	end

	def update
	end
end
