class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:show, :edit, :update]

  def index
    # @users = User.all.order("id ASC")
    #@users = User.where(active: true).order("id ASC").page params[:page]
    # @users = User.joins(:notes).group("id").order("count(notes.user_id) desc").page params[:page]
    # @resources = Resouce.select("resources.*, COUNT(votes.id) vote_count").joins(:votes).where(language_id: "ruby").group("resources.id").order("vote_count DESC")
    @users = User.where(active: true).count_user_notes.page params[:page]
    @user_count = User.where(active: true).page params[:page]
  end

  def save
    @user = User.find(params[:id])
    @schedules = Schedule.where(user_id: params[:id]).find_by(published: true)
    unless @schedules.nil?
      @missions = Mission.where(schedule_id: @schedules.id).order(end_date: :asc)
    end

    @notes = Note.where(user_id: params[:id]).where(published: true).order(updated_at: :asc)
    @theses = Thesis.where(user_id: params[:id]).where(published: true).order(updated_at: :asc)
    @final_thsis = Thesis.where(user_id: params[:id]).find_by(final: true).try(:title)
  end

  def show
    @notes = Note.where(user_id: params[:id]).order(updated_at: :asc)
    @theses = Thesis.where(user_id: params[:id]).order(updated_at: :asc)
    @schedules = Schedule.where(user_id: params[:id]).find_by(published: true)
    unless @schedules.nil?
      @the_mission = Mission.where(schedule_id: @schedules.id).now_mission.first
    end
    @final_thsis = Thesis.where(user_id: params[:id]).find_by(final: true).try(:title)
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  private
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :role, :name, :department_id, :active)
  end
end
