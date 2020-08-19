class HospitalsController < ApplicationController
  def index
  end

  def direction
    @hospitals = Hospital.geocoded

    @markers = @hospitals.map do |hospital|
      {
        lat: hospital.latitude,
        lng: hospital.longitude,
      }
    end
  end
end
