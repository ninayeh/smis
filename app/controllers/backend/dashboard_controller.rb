class Backend::DashboardController < Backend::BaseController
  def index
    @resources = Resource.where(published: false)
    @count_users = User.count
  end
end
