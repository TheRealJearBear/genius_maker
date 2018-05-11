class Api::V1::NasasController < ApiController
  def index
    render json: Nasa.all
  end
end
