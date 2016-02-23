class Backend::LaboratoriesController < Backend::BaseController

  private
  def collection_scope
    Laboratory
  end

  def object_params
    params.require(:laboratory).permit(:name, :professor_name, :description, :department_id)
  end
end
