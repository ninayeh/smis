class MissionsController < ApplicationController
  before_action :set_mission, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  def new
    @mission = Mission.new
  end

  def create
    @mission = Mission.new(mission_params)
    @this_schedule = Schedule.find_by(user_id: current_user.id)
    @mission.schedule_id = @this_schedule.id
    respond_to do |format|
      if @mission.save
        format.html { redirect_to schedules_path, notice: '您的目標已建立成功！' }
        format.json { render :show, status: :created, location: @mission }
      else
        format.html { render :new }
        format.json { render json: @mission.errors, status: :unprocessable_entity }
      end
    end
  end
  def show
  end

  def edit

  end

  def update
    respond_to do |format|
      if @mission.update(mission_params)
        format.html { redirect_to schedules_path, notice: '您的目標已更新成功！' }
        format.json { render :show, status: :ok, location: @mission }
      else
        format.html { render :edit }
        format.json { render json: @mission.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @mission.destroy
    respond_to do |format|
      format.html { redirect_to schedules_path, notice: '您的目標已刪除成功！' }
      format.json { head :no_content }
    end
  end

  private
    def set_mission
      @mission = Mission.find(params[:id])
    end

    def mission_params
      params.require(:mission).permit(:title, :start_date, :end_date, :schedule_id, :check)
    end
end
