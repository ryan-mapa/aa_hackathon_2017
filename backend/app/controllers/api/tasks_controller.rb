class Api::TasksController < ApplicationController
  def index
    @tasks = Task.where(student_id: params[:student_id])
    render :index
  end
end
