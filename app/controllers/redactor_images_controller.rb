class RedactorImagesController < ApplicationController
  skip_before_action :verify_authenticity_token
  def create
    if @image = RedactorImage.create(image_params)
      render json: {filelink: @image.image.url}
    else
      head :bad_request
    end
  end

  private

  def image_params
    params.require(:redactor_image).permit(:image)
  end
end
