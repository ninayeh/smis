class SchedulesController < ApplicationController
  # before_action :set_note, only: [:show, :edit, :update, :destroy]
  # Devise controller filters and helpers
  before_action :authenticate_user!

  def index
    @schedules = Schedule.find_by(user_id: current_user.id)
    @missions = Mission.where(schedule_id: @schedules.id).order(end: :asc)
    # render json: @missions
    @rails_side_json = @missions.to_json
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
    math_ary.each do |a|
       addDay =  (@totalDay * a)
       @date_ary.push (@start.to_date + addDay)
    end

    Settings.schedule.step.each_with_index do |step, d|
      @mission = Mission.new
      @mission.schedule_id = @schedule.id
      @mission.title = step
      @mission.end = @date_ary[d]
      @mission.save
      respond_to do |format|
        if @mission.save
          format.html { redirect_to @mission, notice: 'Note was successfully created.' }
          format.json { render :show, status: :created, location: @mission,:callback => "process_mission" }
        else
          format.html { render :new }
          format.json { render json: @mission.errors, status: :unprocessable_entity }
        end
      end
    end

    redirect_to schedules_path
  end

  # GET /notes
  # GET /notes.json
  # def index
  #   @notes = Note.all
  # end

  # GET /notes/1
  # GET /notes/1.json
  # def show
  # end

  # GET /notes/new
  # def new
  #   @note = Note.new
  # end

  # GET /notes/1/edit
  # def edit
  # end

  # POST /notes
  # POST /notes.json
  # def create
  #   @note = Note.new(note_params)

  #   respond_to do |format|
  #     if @note.save
  #       format.html { redirect_to @note, notice: 'Note was successfully created.' }
  #       format.json { render :show, status: :created, location: @note }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @note.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # PATCH/PUT /notes/1
  # PATCH/PUT /notes/1.json
  # def update
  #   respond_to do |format|
  #     if @note.update(note_params)
  #       format.html { redirect_to @note, notice: 'Note was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @note }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @note.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # DELETE /notes/1
  # DELETE /notes/1.json
  # def destroy
  #   @note.destroy
  #   respond_to do |format|
  #     format.html { redirect_to notes_url, notice: 'Note was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_note
    #   @note = Note.find(params[:id])
    # end

    def object_params
      params.require(:schedule).permit(:start_date, :end_date)
    end

end
