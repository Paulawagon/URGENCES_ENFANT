class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:profil]

  def home
  end

  def profil
    @children = current_user.children
  end
end
