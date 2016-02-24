class SchedulesController < ApplicationController
  # before_action :set_note, only: [:show, :edit, :update, :destroy]
  # Devise controller filters and helpers
  before_action :authenticate_user!

  def index
    @schedules = Schedule.find_by(user_id: current_user.id)
    unless @schedules.nil?
      @missions = Mission.where(schedule_id: @schedules.id).order(end_date: :asc)
    end

  end

  def new
    @schedule = Schedule.new
  end

  def recieve
    @schedule = current_user.schedules.new(object_params)
    @schedule.save

    @start = object_params['start_date'].to_date
    @final = object_params['end_date'].to_date
    @totalDay = (@final - @start.to_date).to_i
    math_ary = [0.03, 0.05, 0.09, 0.13, 0.14, 0.21, 0.23, 0.25, 0.5, 0.55, 0.74,
                0.79, 0.84, 0.89, 0.91, 0.95, 0.97, 1]
    @date_ary = []
    @start_dateary = [@start]
    math_ary.each do |a|
       addDay =  (@totalDay * a)
       @date_ary.push (@start.to_date + addDay)
       @start_dateary.push (@start.to_date + addDay+1)
    end


    Settings.schedule.step.each_with_index do |step, d|
      @mission = Mission.new
      @mission.schedule_id = @schedule.id
      @mission.title = step
      @mission.start_date = @start_dateary[d]
      @mission.end_date = @date_ary[d]
      @mission.save
    end

    redirect_to schedules_path
  end

  private

    def object_params
      params.require(:schedule).permit(:start_date, :end_date)
    end

end
