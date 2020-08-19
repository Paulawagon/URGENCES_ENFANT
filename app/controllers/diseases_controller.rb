class DiseasesController < ApplicationController
  def index
    @diseases = Disease.all
  end

  def show
    @disease = Disease.find(params[:id])
  end

  def behavior
    @disease = Disease.find(params[:id])
  end

  def consult
    @disease = Disease.find(params[:id])
  end

  def need_know
    @disease = Disease.find(params[:id])
  end

  def prevention
    @disease = Disease.find(params[:id])
  end
end
