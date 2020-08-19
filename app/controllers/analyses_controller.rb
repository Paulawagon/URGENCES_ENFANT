class AnalysesController < ApplicationController
  def create
  end

  def new
    @analysis = Analysis.new
  end
end
