class Api::V1::PicturesController < ApiController
  def index
    render json: Picture.all
  end
end
