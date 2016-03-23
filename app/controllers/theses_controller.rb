class ThesesController < BaseController
  authorize_resource :thesis
  def index
    @theses = Thesis.where(user_id: current_user.id)
  end

  def create
    @current_object = current_user.theses.new(object_params)
    if @current_object.save
      respond_to do |f|
        f.html do
          flash[:success] = t('flash.successfully_created')
          redirect_to url_after_create
        end
        f.json
      end
    else
      flash[:danger] = t('flash.failure_created')
      render 'new'
    end
  end

  def show
    @thesis = Thesis.find(params[:id])
  end

  private

  def collection_scope
    Thesis
  end

  def object_params
    params.require(:thesis).permit(:title, :content, :book_list, :slide,
                                   :published, :user_id, :created_at)
  end


end
