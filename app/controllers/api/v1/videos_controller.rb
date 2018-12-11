class Api::V1::VideosController < ApiController
  def index
    render json: Video.all
  end
end
