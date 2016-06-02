class Backend::UsersController < Backend::BaseController
  def show
    # @schedules = Schedule.where(user_id: params[:id]).preload(:missions)
    # @the_missions = Mission.preload(:schedule)
    @schedules = Schedule.find_by(user_id: params[:id])
    unless @schedules.nil?
      @missions = Mission.where(schedule_id: @schedules.id).order(end_date: :asc)
    end
    @notes = Note.where(user_id: params[:id]).order(updated_at: :asc)
    @theses = Thesis.where(user_id: params[:id]).order(updated_at: :asc)
  end
  def index
    # @users = User.joins(:notes).group("id").order("count(notes.user_id) desc")
    @users = User.count_user_notes.page params[:page]
  end
  private
  def collection_scope
    #User.order("id ASC")
    User
  end

  def object_params
    params.require(:user).permit(:email, :password, :password_confirmation, :role,
                                 :name, :department_id, :active)
  end
end
