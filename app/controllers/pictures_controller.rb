class PicturesController < ApplicationController

  def index
    @pictures = Picture.all
  end

  def new
    @picture = Picture.new
    @user = current_user
  end

  def create
    @picture = current_user.pictures.create(picture_params)

    if @picture.save
      flash[:notice] = "Picture added successfully"
       redirect_to @picture
    else
      render "new"
    end
  end

  def show
    @picture = Picture.find(params[:id])
  end

  private

  def picture_params
    params.require(:picture).permit(:photo, :title, :explanation)
  end

end
