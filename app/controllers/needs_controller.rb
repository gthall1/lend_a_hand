class NeedsController < ApplicationController
  def index
    @need = Need.all
  end

  def show
  end

  def new

  end
end
