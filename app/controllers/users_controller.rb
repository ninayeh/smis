class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:show, :edit, :update]
  def index
    @users = User.where(role: 'admin')
  end
  #issue
  def save
    if !params[:id].nil?
      @user = User.where(role: 'admin').find(params[:id])
    else
      redirect_to users_path
    end

    @schedules = Schedule.find_by(user_id: params[:id])

    unless @schedules.nil?
      @missions = Mission.where(schedule_id: @schedules.id).order(end_date: :asc)
    end
    @notes = Note.where(user_id: params[:id]).order(updated_at: :asc)
    @theses = Thesis.where(user_id: params[:id]).order(updated_at: :asc)
  end

  def show

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
    params.require(:user).permit(:email, :password, :password_confirmation, :role, :name, :department_id)
  end
end
