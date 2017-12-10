class Api::GroupsController < ApplicationController
  def create
    @group = Group.new(group_params)
    if @group.save
      render :show
    else
      render json: @group.errors.full_messages, status: 422
    end
  end

  def index
    @groups = Group.where(class_id: params[:class_id])
    render :index
  end

  def show
    @group = Group.find_by(id: params[:id])
    if @group
      render :show
    else
      render json: ['Group not found'], status: 422
    end
  end
  
  def group_params
    params.require(:group).permit(:name, :class_id)
  end
end
