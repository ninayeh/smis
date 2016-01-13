class BookListsController < ApplicationController
  before_action :set_book_list, only: [:show, :edit, :update, :destroy]

  # GET /book_lists
  # GET /book_lists.json
  def index
    @book_lists = BookList.all
  end

  # GET /book_lists/1
  # GET /book_lists/1.json
  def show
  end

  # GET /book_lists/new
  def new
    @book_list = BookList.new
  end

  # GET /book_lists/1/edit
  def edit
  end

  # POST /book_lists
  # POST /book_lists.json
  def create
    @book_list = BookList.new(book_list_params)

    respond_to do |format|
      if @book_list.save
        format.html { redirect_to @book_list, notice: 'Book list was successfully created.' }
        format.json { render :show, status: :created, location: @book_list }
      else
        format.html { render :new }
        format.json { render json: @book_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /book_lists/1
  # PATCH/PUT /book_lists/1.json
  def update
    respond_to do |format|
      if @book_list.update(book_list_params)
        format.html { redirect_to @book_list, notice: 'Book list was successfully updated.' }
        format.json { render :show, status: :ok, location: @book_list }
      else
        format.html { render :edit }
        format.json { render json: @book_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_lists/1
  # DELETE /book_lists/1.json
  def destroy
    @book_list.destroy
    respond_to do |format|
      format.html { redirect_to book_lists_url, notice: 'Book list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book_list
      @book_list = BookList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_list_params
      params[:book_list]
    end
end
