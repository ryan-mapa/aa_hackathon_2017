class Api::TasksController < ApplicationController
  def create
    @task = Task.new
    @task.save if @task
  end
  
  def index
    @tasks = Task.where(student_id: params[:student_id])
    render :index
  end
end
