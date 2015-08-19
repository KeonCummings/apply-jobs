class AdminsController < ApplicationController
	def new
		@admin = Admin.new
	end

	def create
	end

	def show
		@admin = current_user
		@users = User.all
	end

	def job_edit
		@admin = current_user
		@users = User.all
		@jobs = Job.all
	end
end
