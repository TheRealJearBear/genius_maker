class NasasController < ApplicationController
  def index
    @nasas = Nasa.all
  end
end
