class Backend::DepartmentsController < Backend::BaseController
  helper_method :subset
  private
  def collection_scope
    Department
  end

  def object_params
    params.require(:department).permit(:name)
  end

  def subset
    current_object.laboratories.all.order(created_at: :desc)
  end
end
