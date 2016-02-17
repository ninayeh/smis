class Backend::UsersController < Backend::BaseController
  private
  def collection_scope
    User
  end

  def object_params
    params.require(:user).permit(:email, :password, :password_confirmation, :role, :name, :department_id)
  end
end
