class ChildrenController < ApplicationController
  before_action :set_child, only: %i[update edit destroy]

  def new
    @child = Child.new
  end

  def create
    @child = Child.new(child_params)
    @child.user = current_user if user_signed_in?
    @child.save
    if user_signed_in?
      redirect_to profil_path
    else
      redirect_to root_path
    end
  end

  def update
    @child = Child.find(params[:id])
    @child.update(child_params)
    redirect_to profil_path
  end

  def edit
    @child = Child.find(params[:id])
  end

  def destroy
    @child = Child.find(params[:id])
    @child.destroy

    redirect_to profil_path
  end

  private

  def child_params
    params.require(:child).permit(:first_name, :birth_date, :weight, :cardiac, :respiratory, :prematurity)
  end

  def set_child
    @child = Child.find(params[:id])
  end
end
