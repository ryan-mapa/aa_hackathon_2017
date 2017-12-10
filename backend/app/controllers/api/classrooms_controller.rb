class Api::ClassroomsController < ApplicationController
  def create
    @classroom = Classroom.new(classroom_params)
    if @classroom.save
      render :show
    else
      render json: @classroom.errors.full_messages, status: 422
    end
  end

  def index
    if current_user.is_instructor
      @classrooms = current_user.instructed_classrooms
    else
      @classrooms = current_user.enrolled_classrooms
    end
    render :index
  end

  def show
    @classroom = Classroom.find_by(id: params[:id])
    if @classroom
      render :show
    else
      render json: ['Classroom not found'], status: 422
    end
  end
  
  def classroom_params
    params.require(:classroom).permit(:name, :instructor_id)
  end
end
