class MissionsController < ApplicationController
  before_action :set_mission, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
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

  end

  private
    def set_mission
      @mission = Mission.find(params[:id])
    end

    def mission_params
      params.require(:mission).permit(:title, :start, :end, :user_id)
    end
end
