class HospitalsController < ApplicationController
  def index
  end

  def direction
    @hospitals = Hospital.geocoded

    @markers = @hospitals.map do |hospital|
      {
        lat: hospital.latitude,
        lng: hospital.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { hospital: hospital }),
      }
    end
  end
end
