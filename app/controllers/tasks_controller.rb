class TasksController < ApplicationController
  def show
    course = Course.find(params[:id])
    @tasks = course.tasks
    @task = @tasks.find(params[:id])
  end
end
