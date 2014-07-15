class NeedsController < ApplicationController
  def index
    @needs = Need.all
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
    if @need.save
      redirect_to needs_path
      flash[:notice] = "Help Request has been saved to database!"
    else
      flash[:notice] = "Please fill out this field."
      render :new
    end
  end

  private

  def need_params
    params.require(:need).permit(:title, :description) #might need :address here, not sure syntax
    params.require(:location).permit(:address)
  end
end
