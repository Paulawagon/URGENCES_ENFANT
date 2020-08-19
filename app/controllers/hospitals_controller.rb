class HospitalsController < ApplicationController
  def index
    @hospitals = Hospital.geocoded # returns flats with coordinates

    @markers = @hospitals.map do |hospital|
      {
        lat: hospital.latitude,
        lng: hospital.longitude,
      }
    end
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
