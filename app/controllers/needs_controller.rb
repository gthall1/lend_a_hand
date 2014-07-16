class NeedsController < ApplicationController
  def index
    @needs = Need.all

    @locations = []
    @needs.each do |need|
      @locations << need.location
    end

    @location_markers = Gmaps4rails.build_markers(@locations) do |location, marker|
      marker.lat location.latitude
      marker.lng location.longitude
    end
  end

  def show
  end

  def new
    @need = Need.new
  #maybe try locations if this doesn't work
    @location = @need.build_location
  end

  def create
     @need = Need.new(need_params)
     #add error about invalid location
    @location = Location.create(address: address_params)

    @need.location_id = @location.id
    if @need.save
      flash[:notice] = "Help Request has been saved to database!"
      redirect_to needs_path
    else
      flash[:notice] = "Please fill out this field."
      render :new
    end
  end



  private

  def need_params
    params.require(:need).permit(:title, :description) #might need :address here, not sure syntax
  end

  def address_params
    params.require(:need)[:location][:address]
  end
end
