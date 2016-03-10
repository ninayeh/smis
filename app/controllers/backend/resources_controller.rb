class Backend::ResourcesController < Backend::BaseController
  private
  def collection_scope
    Resource
  end

  def object_params
    params.require(:resource).permit(:title, :url, :file, :description, :published, :user_id)
  end
end
