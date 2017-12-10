class Api::AssignmentsController < ApplicationController
  def create
    @assignment = Assignment.new(assignment_params)
    if @assignment.save
      render :show
    else
      render json: @assignment.errors.full_messages, status: 422
    end
  end

  def index
    @assignments = Assignment.where(class_id: params[:class_id])
    render :index
  end

  def show
    @assignment = Assignment.find_by(params[:id])
    if @assignment
      render :show
    else
      render json: ['Assignment not found'], status: 422
    end
  end
  
  def assignment_params
    params.require(:assignment).permit(:name, :description, :point_value, :due_date, :class_id)
  end
  
end
