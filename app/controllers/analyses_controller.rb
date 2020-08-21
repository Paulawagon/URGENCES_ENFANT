class AnalysesController < ApplicationController
  def create
  end

  def new
    @analysis = Analysis.new
    @child = Child.find(params[:child_id])
    @symptoms = ["Fièvre", "Toux", "Rhume", "Diarrhées", "Vomissements", "Douleurs abdominales", "Brûlures"]
  end

  def create
    @analysis = Analysis.new

    symptoms = params[:analysis][:symptoms]
    symptoms.delete_at(0)

    @child = Child.find(params[:child_id])
    @analysis.child = @child
    @analysis.symptoms = symptoms
    @analysis.save
    if @analysis.is_an_emergency?
      redirect_to direction_path
    else
      all_possible_diseases = Disease.all.select do |disease|
        symptoms.all? do |symptom|
          disease.symptoms.include? symptom
        end
      end
      redirect_to disease_path(all_possible_diseases.first)
    end
  end
end
