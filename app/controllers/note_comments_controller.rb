class NoteCommentsController < ApplicationController
  before_action :find_comment, only: [:show, :edit, :update, :destroy]
  before_action :find_discussion, only: [:show, :update]
  before_action :authenticate_user!

  def index
    @comments = NoteComment.all
  end

  def show
    respond_to do |f|
      f.js {render 'show.js.slim'}
    end
  end

  def new
    @comment = NoteComment.new
  end

  def create
    @comment = NoteComment.new(comment_params)
    @comment.user_name = current_user.name

    respond_to do |format|
      if @comment.save
        format.html { redirect_to note_path(@comment.note_id), notice: '完成留言' }
        # format.json { render :show, status: :created, location: @note }
      else
        format.html { render :new }
        # format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    # @current_object = NoteComment.find_by(id: params[:id])
    @comment.assign_attributes(comment_params)
    if @comment.save
      respond_to do |format|
        # format.html { redirect_to note_path(@comment.note_id), notice: '完成修改' }
        format.js { render 'update.js.slim' }
      end
    else
      @errors = t('errors.messages.agreement') unless params[:agreement]
      respond_to do |format|
        format.js {render 'update_fail.js.slim'}
      end
    end
  end


  def destroy
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to note_path(@comment.note_id), notice: '已刪除。' }
      format.json { head :no_content }
    end
  end

  private
    def find_comment
      @comment = NoteComment.find(params[:id])
    end

    def comment_params
      params.require(:note_comment).permit(:comment, :user_name, :note_id)
    end

    def find_discussion
      @current_object = NoteComment.find_by(id: params[:id]).comment
    end
end
