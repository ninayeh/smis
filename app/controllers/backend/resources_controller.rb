class Backend::ResourcesController < Backend::BaseController
  def new
    @resource = Resource.new
  end

  def create
    @resource = current_user.resources.new(object_params)
    @resource.published = false;
    if @resource.save
      redirect_to backend_resources_path, notice: '您的分享的資源已送出！'
    else
      render :new
    end
  end
  private
  def collection_scope
    Resource
  end

  def object_params
    params.require(:resource).permit(:title, :url, :file, :description, :published, :user_id)
  end
end
