class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:profil]

  def home
    @diseases = Disease.all
  end

  def profil
    @children = current_user.children
  end

  def new
    @child = Child.new
  end

  def create_urgence
    @child = Child.new(child_params)
    @child.user = current_user
    @child.save
  end

  def child_params
    params.permit(:birth_date, :weight, :cardiac, :respiratory, :prematurity)
  end
end
