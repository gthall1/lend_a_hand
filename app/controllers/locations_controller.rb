class LocationsController < ApplicationController
  def index
    @locations = Location.all

    @location_markers = Gmaps4rails.build_markers(@locations) do |location, marker|
      marker.lat location.latitude
      marker.lng location.longitude
    end
  end

  def show
  end

  def new
    @location = Location.new
    @location.needs.build
  end

  def create
    @location = Location.new(location_params)
    if @location.save
      redirect_to locations_path
      flash[:notice] = "Location has been saved to database!"
    else
      flash[:notice] = "Please fill out this field."
      render :new
    end
  end

  private

  def location_params
    params.require(:location).permit(:address, :latitude, :longitude)
  end

end
