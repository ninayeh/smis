class ResourcesController < ApplicationController
  before_action :set_resource, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @resources = Resource.where(published: true)
  end

  def new
    @resource = Resource.new
  end

  def create
    @resource = current_user.resources.new(resource_params)
    @resource.published = false
    if @resource.save
      redirect_to @resource, notice: '您的筆記已紀錄成功！'
    else
      render :new
    end
  end

  def show

  end

  private
    def set_resource
      @resource = Resource.find(params[:id])
    end

    def resource_params
      params.require(:resource).permit(:title, :rul, :file, :description, :published, :user)
    end
end
