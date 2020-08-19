class AnalysesController < ApplicationController
  def create
  end

  def new
    @analysis = Analysis.new
    @child = Child.find(params[:child_id])
    @symptoms = ["Fièvre","Toux","Rhume","Diarrhées","Vomissements","Douleurs abdominales","Brûlures"]
  end

  def create
    @analysis = Analysis.new
    @child = Child.find(params[:child_id])
    @analysis.child = @child
    @analysis.save
    if @analysis.is_an_emergency?
      redirect_to direction_path
    else 
      redirect_to disease_path
    end


  end
end
