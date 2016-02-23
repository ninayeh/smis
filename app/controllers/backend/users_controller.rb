class Backend::UsersController < Backend::BaseController
  private
  def collection_scope
    User.order("id ASC")
  end

  def object_params
    params.require(:user).permit(:email, :password, :password_confirmation, :role, :name, :department_id)
  end
end
