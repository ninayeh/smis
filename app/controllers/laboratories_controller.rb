class LaboratoriesController < ApplicationController
  def index
    @labs = Laboratory.all
  end

  def show
    @lab = Laboratory.find(params[:id])
  end
end
