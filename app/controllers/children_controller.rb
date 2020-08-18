class ChildrenController < ApplicationController
  def new
    @child = Child.new
  end

  def create
    @child = Child.new(child_params)
    @child.user = current_user
    @child.save

    redirect_to analyses_path
  end

  def update
  end

  def edit
  end

  def destroy
  end

  private

  def child_params
    params.require(:child).permit(:first_name, :birth_date, :weight, :cardiac, :respiratory, :prematurity)
  end
end
