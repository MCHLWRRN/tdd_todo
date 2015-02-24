class TasksController < ApplicationController
	def new
	end

	def create
		@task = Task.create(task_params)
		redirect_to task_path(@task)
	end

	def show
		@task = Task.find(params[:id])
	end


	private

	def task_params
		params.require(:task).permit(:name, :assignedto)
	end
end
