class Backend::DepartmentsController < Backend::BaseController

  private
  def collection_scope
    Department
  end

  def object_params
    params.require(:department).permit(:name)
  end
end
