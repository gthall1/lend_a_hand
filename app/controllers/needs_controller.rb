class NeedsController < ApplicationController
  def index
    @needs = Need.all
  end

  def show
  end

  def new
    @need = Need.new
  end
end
